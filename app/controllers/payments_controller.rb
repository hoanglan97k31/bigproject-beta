require "stripe"
class PaymentsController < ApplicationController
  before_action :set_Payment, only: [:show, :edit, :update, :destroy]
  protect_from_forgery except: :webhook

  # GET /Payments
  def index
    @payments = Payment.all
    @order = current_order
  end

  # GET /Payments/1
  def show
  end

  # GET /Payments/new
  def new
    @payment = Payment.new
    @order = current_order
  end

  # POST /Payments

    @payment = Payment.new payment_params.merge(email: stripe_params["stripeEmail"],
                                                card_token: stripe_params["stripeToken"]) 
    raise "Please, check Payment errors" unless @payment.valid?
    @payment.process_payment
    @payment.save
    redirect_to @payment, notice: 'Payment was successfully created.'
  rescue e
    flash[:error] = e.message
    render :new
  end

  def webhook
    event = Stripe::Event.retrieve(params["id"])

    case event.type
      when "invoice.payment_succeeded" #renew subscription
        Payment.find_by_customer_id(event.data.object.customer).renew
    end
    render status: :ok, json: "success"
  end

  private
    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_Payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit( :full_name, :company, :telephone, :email, :card_token)
    end
end
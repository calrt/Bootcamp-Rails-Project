class ChargesController < ApplicationController
  def new
  end

  def order
    @product = Product.find(params[:id])
  end
  
  def create
    @product = Product.find(params[:id])
    @amount = @product.price + @product.shipping_price
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

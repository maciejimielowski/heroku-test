class CartController < ApplicationController
  def index
    @cart = session[:cart] || {}

  end

  def add
    id = params[:id]
    cart = session[:cart] || {}
    cart[id]= (cart[id] || 0) + 1

    session[:cart] = cart

    redirect_to :action => :index
  end

  def destroy
    id = params[:id]
    cart = session[:cart] || {}
    cart.delete(id)

    redirect_to :action => :index
  end

  def increase
    id = params[:id]
    cart = session[:cart] || {}
    cart[id]= (cart[id] || 0) + 1

    session[:cart] = cart

    redirect_to :action => :index
  end


  def decrease
    id = params[:id]
    cart = session[:cart]

    if cart[id] == 1
      cart.delete(id)
    else
      cart[id] -= 1
    end

    redirect_to :action => :index
  end


end

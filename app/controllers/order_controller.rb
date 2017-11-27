class OrderController < ApplicationController



  @email
  @address
  @name



  def form
	  @message = params[:message] || ""
  end

  def new

      @email = params[:email]
      @address = params[:address]
      @name = params[:name]

      if validateInput(@email, @address, @name)
        session[:cart] = {}
      else
        redirect_to action: 'form', message: 'wrong data'
      end
  end

  def validateInput(email, adress, name)

      if name.length === 0 || email.length === 0 || adress.length === 0
        return false
      else
		return true	  
      end	  

  end

end

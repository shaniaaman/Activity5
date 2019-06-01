class PhonesController < ApplicationController

	def index
    	@phones = Phone.where("stock > 0")
    	
 	end
 	
 	def show
 		@phone = Phone.find(params[:id])

 	end
 	
 	def new
    	@phone = Phone.new
  	end
    
    def buy
    	@phone = Phone.find(params[:id])
    	@phone.stock = @phone.stock - 1
    	@phone.save
    end
    
    def create
    	@phone = Phone.new
    	@phone.name = params[:phone][:name]
    	@phone.brand = params[:phone][:brand]
    	@phone.year_released = params[:phone][:year_released]
    	@phone.camera = params[:phone][:camera]
    	@phone.mpixels = params[:phone][:mpixels]
    	@phone.interna_stor = params[:phone][:interna_stor]
    	@phone.sim_slots = params[:phone][:sim_slots]
    	@phone.sc_size = params[:phone][:sc_size]
    	@phone.os = params[:phone][:os]
    	@phone.stock = params[:phone][:stock]
    	
    	@phone.save
    	
    	redirect_to "/phones/#{@phone.id}"
    end
    
  
end

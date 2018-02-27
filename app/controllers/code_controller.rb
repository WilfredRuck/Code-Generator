class CodeController < ApplicationController
  
  def index
  	flash[:success] = "Code created!"
  	@codes = Code.all.reverse
  end

  def create
  	code = ''
  	while(code == '')
	  	firstLetters = ('A'..'Z').to_a.shuffle[0,2].join
	  	
	  	numbers = rand(0...99).to_s
	  	if numbers.length == 1
	  		numbers.insert(0,'0')
	  	end

	  	secondLetters = ('A'..'Z').to_a.shuffle[0,2].join

	  	code = (firstLetters + numbers + secondLetters)
	  	if (Code.where(code: code).any? == false)
		  	Code.create(code: code)
		  	flash[:code] = code
	  		redirect_to root_path
	  	else
	  		code = ''
	  	end
	end
  end

  def new
  	@code = Code.new
  end

  def adminCreate
  	@code = Code.new(code_params)

  	if @code.save
  		flash[:message] = "#{@code.code} Added!"
  		redirect_to woar_path
  	else
  		flash[:message] = "Code Not Added!"
  		flash.discard
  		render 'new'
  	end
  end


  private

	def code_params
		params.require(:code).permit(:code)
	end

end

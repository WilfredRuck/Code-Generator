class CodesController < ApplicationController
  
  def index
  	flash[:success] = "Code created!"
    @codes = Code.all.reverse
    @codes_count = @codes.length
  end

  def create
    code = ''
    while(code == '')
      first_letters = ('A'..'Z').to_a.shuffle[0,2].join
      
      numbers = rand(0...100).to_s
      if numbers.length == 1
        numbers.insert(0,'0')
      end
      
      second_letters = ('A'..'Z').to_a.shuffle[0,2].join
      
      code = (first_letters + numbers + second_letters)
      new_code = Code.new(code: code)
      if new_code.save
        flash[:code] = code
        redirect_to root_url
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
  		flash[:message] = "#{@code.name} Added!"
  		redirect_to woar_url
  	else
  		flash[:message] = @code.errors.full_messages
  		flash.discard
  		render 'new'
  	end
  end

  private

	def code_params
		params.require(:code).permit(:code)
	end

end

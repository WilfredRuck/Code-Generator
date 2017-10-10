class CodeController < ApplicationController
  def index
  	flash[:success] = "Code created!";
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
		  	flash[:code] = code;
	  		redirect_to root_path
	  	else
	  		code = ''
	  	end
	end
  end

end

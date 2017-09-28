class HandlerController < ApplicationController


	def version
		render json: {code:200,success:true,version:"0.0.0.0.1-alpha-alpha.dongs.whats-less-then-alpha"}
	end
	

	def is_it_broken
		render json: {code:200,response:true,message:"Yes it is"}
	end

	def did_charlie_break_it
		render json: {code:100,response: true,message:"Yes. Yes he did."}
	end
	
	def is_charlie_in_jail
		render json: {code:200,response: false,message:"Not yet."}
	end

	def operations
			render json: [
				{name:"Current Version",url:"/version",method:"get"},
				{name:"Is it Broken",url:"/is_it_broken",method:"get"},
				{name:"Did Charlie Break It",url:"/did_charlie_break_it",method:"get"},
				{name:"Is Charlie In Jail",url:"/is_charlie_in_jail",method:"get"},
			]
	end
end

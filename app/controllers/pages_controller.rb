class PagesController < ApplicationController

	def home
	  @jobs = Job.last(4).reverse 
	  @total = Job.all.size # please correct this to only show active jobs later
	end

	def contact
	end

	def privacy
	end

	def service
	end
	
	def about
	end

	def become_driver
	end
end
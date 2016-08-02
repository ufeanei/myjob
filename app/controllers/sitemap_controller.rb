class SitemapController < ApplicationController
  respond_to :xml

  def index
  	 @jobs = Job.order("created_at DESC")
  end
end

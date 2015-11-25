class HomeController < ApplicationController
  def index
  	@posts = Post.all
  	@jobs = Job.all
  end
end

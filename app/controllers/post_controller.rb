class PostController < ApplicationController
  def index
  	@post = Post.all.order('updated_at DESC')
  end
end

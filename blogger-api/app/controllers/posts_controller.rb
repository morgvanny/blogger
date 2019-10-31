class PostsController < ApplicationController

  def index
    render json: post_json(Post.all)
  end
  def create
    user = User.find_or_create_by(user_params)
    post = user.posts.build(post_params)

    if post.save
      render json: post_json(post)
    else
      render json: {error: post.errors.full_messages}
    end
  end

  private

  def post_json(post)
    post.to_json(
      only:[:title, :content, :id],
      include:{ user: {only: [:name, :id]}}
    )
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def user_params
    params.require(:user).permit(:name)
  end


end

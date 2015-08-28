class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
  end

  def show
    @posts = User.find(params[:user_id]).posts.all
  end

  def new
    @post = Post.new
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @post.save
        format.html { redirect_to user_post_path(@user, @post), notice: 'Post was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to user_posts_path, notice: 'Post was successfully destroyed.' }
    end
  end

private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:id, :resentful_at, :cause, :affects_my, :my_part, :selfish, :dishonest, :afraid, :owe_an_apology, :kept_to_myself, :kind_and_loving, :done_better, :thinking_of_myself, :thinking_of_others, :defects, :gratitude, :user_id)
  end
end

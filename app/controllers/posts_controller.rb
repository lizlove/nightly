  class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find(params[:user_id])
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def edit
  end

  def create
    binding.pry
    @post = Post.create(post_params) 
    redirect_to posts_path(@post)
  end

  # def update
  #   respond_to do |format|
  #     if @post.update(post_params)
  #       format.html { redirect_to @post, notice: 'Post was successfully updated.' }
  #     else
  #       format.html { render :edit }
  #     end
  #   end
  # end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    end
  end

private

    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:resentful_at, :cause, :affects_my, :my_part, :selfish, :dishonest, :afraid, :owe_an_apology, :kept_to_myself, :kind_and_loving, :done_better, :thinking_of_myself, :thinking_of_others, :defects, :gratitude, :user_id)
    end


end

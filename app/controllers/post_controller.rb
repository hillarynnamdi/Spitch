class PostController < ApplicationController
  def index
  end

  def new
    @post=Post.new 
  end

  def edit
    @post=Post.find(params[:id]) 
  end


  def show
    @post=Post.find_by_url(params[:id]) 
  end

  def destroy
    
  end

 def update
  @post=Post.find(params[:id])
  if @post.update(post_params)
    if params[:send_email]=="yes"
      NewsletterMailer.newsletter(@post).deliver_now
      end
    redirect_to post_path(@post.url)
  else
    render 'edit'
  end
end

  def create
    @post = Post.new(post_params)
   
    if @post.save 
      if params[:send_email]=="yes"
      NewsletterMailer.newsletter(@post).deliver_now
      end
      redirect_to root_path 
    else
      render 'new'
    end
  end

    def destroy
  @post=Post.find(params[:id])
  @post.destroy
  redirect_to root_path
  end





  private
  def post_params
    params.require(:post).permit(:url, :image,:post,:title,:category)
  end
end

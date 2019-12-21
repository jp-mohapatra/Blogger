class BlogsController < ApplicationController

  def blog_list
  	@user = User.find(current_user.id)
  	@blogs = @user.blogs.order(id: :desc)
 
  end

  def create_blog
  	@user = User.find(current_user.id)
  	@blog = @user.blogs.create!(blog_params)
    if @blog
      params[:images].each do |image|
       @blog.photos.create(photo: image)
      end
    end
  	redirect_to :action => 'blog_list'	
  end

  def blog_details
    @blog = Blog.friendly.find(params[:id])
    @comments = @blog.comments.order(id: :desc)
  end



 protected
  def blog_params
  	params.require(:blog).permit(:title,:description)
  end

end

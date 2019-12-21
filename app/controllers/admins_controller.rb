class AdminsController < ApplicationController
	def manage_blogs
	  @blogs = Blog.order(id: :desc)
		
	end

	def approve
	  @blog = Blog.find(params[:id])
	  if @blog.is_approve == true
	    @blog.update_attributes!(:is_approve => false)
	    render plain: "ok"
	  else
	    if @blog.is_approve == false
	    @blog.update_attributes!(:is_approve => true)
	    render plain: "ok"
	    end
	  end
	end
end

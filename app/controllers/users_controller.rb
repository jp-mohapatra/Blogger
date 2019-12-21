class UsersController < ApplicationController
  def profile

  	@user=User.find(current_user.id)
  
  end

  def edit_profile

   @user=User.find(current_user.id)
   p current_user.id
  	
  end

  def update
    @user=User.find(current_user.id);
  	if @user.update_attributes!(user_params)
       redirect_to :action => 'profile'
      else
       render :action => 'edit'
      end
  	
   end

  def change_password
    @user=User.new   
  end

  def update_password
  	@user = User.find(current_user.id)
    if @user.update!(pass_params)
     
     redirect_to "/"      
    else
      render 'change_password'
    end
  end

  def check_password
  	 @user = User.find(current_user.id)

    result = @user.valid_password?(params[:current_password])
      render json: result, status: :ok
  end

 protected
  def pass_params

     params.require(:user).permit(:password, :password_confirmation)
  end


  def user_params

    params.require(:user).permit(:name, :email, :dob, :gender, :is_admin, :address)
    
  end
end

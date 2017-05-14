class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  add_flash_types :successful, :mailer



    def after_sign_in_path_for(resource_or_scope)
     if resource_name == :admin
         dashboard_index_path

  	end
  end


  def after_sign_up_path_for(resource_or_scope)
     if resource_name == :admin
  	   dashboard_index_path
      
     end
  end


  def after_sign_out_path_for(resource_or_scope)
     if resource_name == :admin
       new_admin_session_path
  end 

end

  def after_accept_path_for(resource)
  	accept_admin_invitation_path
  end


end

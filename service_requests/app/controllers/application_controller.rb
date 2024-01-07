class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized



    private

    def user_not_authorized(exception)
        policy_name = exception.policy.class.to_s.underscore

        flash[:error] = "access denied"
        redirect_back(fallback_location: root_path)
    end

    ## As devise permits only email , password, password confirmation in the POST request 
    # I have also permitted Name, Unique Id, Department and Role
    protected
    
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:unique_id,:department,role:[]])
    end
end

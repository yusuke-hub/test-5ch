class ApplicationController < ActionController::Base
  # before_action :authenticate_user!,except:[:index]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def after_sign_in_path_for(resource)
  	root_path
  end
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  def serarch_result
    @search_form = ContributionSearchForm.new(params[:search])
    @contributions = @search_form.search
    if params[:search]
      @results = @contributions.result(distinct: true)
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
  end
end

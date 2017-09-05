class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale_from_params

  private

  def set_locale_from_params
    I18n.locale = params[:locale] || I18n.default_locale
  end
end

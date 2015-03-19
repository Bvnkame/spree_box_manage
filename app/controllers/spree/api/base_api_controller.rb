module Spree
  module Api
    class BaseApiController < Spree::Api::BaseController
      #protect_from_forgery with: :exception
      rescue_from ActiveRecord::RecordNotFound, :with => :render_error_not_found
      #before_action :authenticate_user!
      
      def render_error_basic(exception, message, status)
        render :json => { :message => message, :errors => {:base => [exception.message] } },
               :status => status
      end
      
      def render_error_not_found(exception)
        render_error_basic(exception, "object not found", 404)
      end
      
      def render_error_douplicate()
        render :json => { :message => "Duplicate object", :status => 400 }
      end
    end
  end
end
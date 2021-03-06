module Spree
  module Api
    class ImagecoversController < Spree::Api::BaseController

      def index
        @images = scope.covers.accessible_by(current_ability, :read)
        respond_with(@images)
      end

      def show
        @image = Imagecover.accessible_by(current_ability, :read).find(params[:id])
        respond_with(@image)
      end

      def create
        authorize! :create, Image
        @image = scope.covers.create(image_params)
        respond_with(@image, :status => 201, :default_template => :show)
      end

      def update
        @image = scope.covers.accessible_by(current_ability, :update).find(params[:id])
        @image.update_attributes(image_params)
        respond_with(@image, :default_template => :show)
      end

      def destroy
        @image = scope.covers.accessible_by(current_ability, :destroy).find(params[:id])
        @image.destroy
        respond_with(@image, :status => 204)
      end

      private
        def image_params
          params.require(:image).permit(permitted_image_attributes)
        end

        def scope
          scope = Spree::Box.find(params[:box_id])
        end
    end
  end
end

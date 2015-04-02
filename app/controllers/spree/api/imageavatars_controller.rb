module Spree
  module Api
    class ImageavatarsController < Spree::Api::BaseController

      def index
        @images = scope.avatars.accessible_by(current_ability, :read)
        respond_with(@images)
      end

      def show
        @image = Imageavatar.accessible_by(current_ability, :read).find(params[:id])
        respond_with(@image)
      end

      def create
        authorize! :create, Image
        @image = scope.avatars.create(image_params)
        respond_with(@image, :status => 201, :default_template => :show)
      end

      def update
        @image = scope.avatars.accessible_by(current_ability, :update).find(params[:id])
        @image.update_attributes(image_params)
        respond_with(@image, :default_template => :show)
      end

      def destroy
        @image = scope.avatars.accessible_by(current_ability, :destroy).find(params[:id])
        @image.destroy
        respond_with(@image, :status => 204)
      end

      private
        def image_params
          params.require(:image).permit(permitted_image_attributes)
        end

        def scope
          scope = Spree::Expert.find(params[:box_id])
        end
    end
  end
end

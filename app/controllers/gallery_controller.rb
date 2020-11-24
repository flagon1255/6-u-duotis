class GalleryController < ApplicationController


	def gallery

		@images = Dir.glob('D:/FirstApp/app/assets/images/*.jpg')
		before_action raise Exception, "Wrong image" if @images.nil? || @images.empty?
		
	end
end

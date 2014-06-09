class Post < ActiveRecord::Base

  paginates_per 5

  TYPES = %w( Lego Game Nurf Game Movie Electronic Other )

	validate presence_of: :type 

	def about
		read_attribute(:about).html_safe
	end
	def order_link
		read_attribute(:order_link).html_safe
	end
	def image
		ActionController::Base.helpers.image_tag(read_attribute(:image), class: "image")
	end

	def video
		read_attribute(:video).html_safe
	end	

end

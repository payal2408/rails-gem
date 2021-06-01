class Demo < ApplicationRecord
	paginates_per 3
	has_one_attached :cover_photo
	has_many_attached :images
end

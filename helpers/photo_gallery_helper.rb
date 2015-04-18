module PhotoGalleryHelper
	# Takes an Dir.glob-compatible path and outputs the linked fullsize image
	# with the thumbnail.
	def photo_gallery_for(path)
		# TODO lololol this is _terrible_
		Dir.glob(path).sort.map do |i|
			image = Pathname.new(i).relative_path_from(Pathname.new('source/images'))
			thumb = image.dirname.to_s + '/thumbs/' + image.basename.to_s.gsub(/\.jpg/, '_thumb.jpg')
			content_tag :article, class: 'photo' do
				content_tag :figure do
					link_to image_tag(thumb), image_path(image), class: 'lightbox'
				end
			end
		end.join(" ")
	end
end

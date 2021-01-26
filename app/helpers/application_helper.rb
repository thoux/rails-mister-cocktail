module ApplicationHelper

  def resize_image(image_path)
    image = MiniMagick::Image.new(image_path)
    image.resize = "100x100"
    image_tag(image)
  end
end

module ApplicationHelper
  def display_picture(cocktail)
     if cocktail.photo.attached?
      cl_image_tag cocktail.photo.key, class:"img-fluid"
     else
      image_tag 'chicandier.jpg'
     end
  end
end

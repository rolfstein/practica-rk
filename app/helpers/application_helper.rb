module ApplicationHelper
  
  def full_title(page_title)
    base_title = "Practica de Rails"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def which_action
    params[:action]
  end
  
end

module ApplicationHelper
  def render_trix_content(content)
    content_tag(:div, class: "trix-content") do
      auto_link(sanitize(content))
    end
  end

  def ibutton(text, path, options = {})
    color_btn_class = ["btn-primary", "btn-danger", "btn-info", "btn-warning", "btn-success", "btn-inverse"]

    class_name = options[:class].present? ? options[:class] : ""
    icon_class = ""

    if options[:iclass].present?
      icon_class = options[:iclass]
      icon_class << " icon-white" unless (color_btn_class & class_name.split(" ")).empty?
      options.delete(:iclass)
    end
    link_to path, options do
      content_tag(:i, "", class: icon_class) + content_tag(:span, " #{text}")
    end
  end
end

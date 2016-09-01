module ApplicationHelper
  def render_trix_content(content)
    content_tag(:div, class: "trix-content") do
      auto_link(sanitize(content))
    end
  end
end

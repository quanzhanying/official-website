module FaqsHelper
  def render_faq_title(faq)
    faq_class =
      if faq.is_display
        ""
      else
        "collapsed"
                     end
    link_to(faq.title, "#faq-#{faq.id}", class: "accordion-toggle #{faq_class}", data: { toggle: "collapse", parent: "#accordion" })
  end

  def render_faq_status(faq)
    if faq.is_hidden
      content_tag(:span, "", class: "fa fa-inbox post-state")
    else
      content_tag(:span, "", class: "fa fa-globe post-state")
    end
  end
end

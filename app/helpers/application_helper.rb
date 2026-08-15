module ApplicationHelper
    # Renders one sidebar navigation item, highlighting it when it matches the
    # controller currently being rendered.
    def nav_link_to(label, path, icon, active)
        classes = active ? "nav-link active" : "nav-link"

        link_to path, class: classes do
        content_tag(:span, icon, class: "material-icons-outlined") + " #{label}"
    end
  end
end

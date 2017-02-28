module ApplicationHelper
  def foo
    "<li> hello from my helper </li>".html_safe
  end

  def form_tag(path, action = "POST")

    form = <<-HTML
      <form action="#{path}" method="#{action}">

      </form>
    HTML
    form.html_safe
  end

  def label_tag()
    # <label for="">name</label>
  end

  def text_field_tag()
    # <input type="text" name="" value="">
  end

  def submit_tag
    # <input type="submit" >
  end
end

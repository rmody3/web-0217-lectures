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

  # label_tag('hometown', {id: 'users_hometown', for: 'users_hometown'})

  def label_tag_by_us(text, options = {})
    label = <<-HTML
      <label for="#{options[:for]}">#{text}</label>
    HTML
    label.html_safe
  end

  # text_field_tag('user[hometown]', {value: 'philly'})
  def text_field_tag(name_attribute, options)
    "<input type="text" name="#{name_attribute}" value="#{options[:value]}">"
  end

  # def submit_tag
  #   # <input type="submit" >
  # end
end

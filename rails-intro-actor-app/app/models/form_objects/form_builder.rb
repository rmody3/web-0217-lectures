class FormBuilder
  attr_reader :ar_instance
  def inititalize(ar_instance)
    @model_name = model_name
  end
  def form_tag
    <form action="#{ar_instance}s", >
  end
  def text_field(attribute)
    actor.send('hometown')
    actor.hometown
    ar_instance.send(attribute)
    "<input type="text" name="#{model_name[attribute]}" value="#{options[:value]}">".html_safe
  end


end

actor = Actor.new
FormBuilder.new(actor).text_field('hometown')

def act_on_string(method)
  'aslkjsklaj klasjkasjlks'.send(method)
end

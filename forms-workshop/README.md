rails g migration create_actors name:string hometown:string
rails g model actor name
rails g migration add_birthday_to_actors birthday


better_errors
binding_of_caller


<!-- [Keanu Reeves]
action="/actors"  method="GET" -->
<!-- <%= form_for Actor.new %> -->

<!-- <form action="/actors" method="post">

</form> -->

1. What html do we need generated?
  action="" method=""
  Form for
    @actor = Actor.new
    form_for @actor
    action="actors" method = "post"

    form_tag('/actors', {method: 'post', id: 'actors_search_form'})

2. Actor.where(name: params[:actor_name])

3.

Task
  Build a character form
  Use form_for
  1. Name
  2. actor_name
  find_or_create the actor
  And associate that actor with the character

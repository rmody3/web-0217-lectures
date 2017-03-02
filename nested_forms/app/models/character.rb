class Character < ActiveRecord::Base
  belongs_to :tv_show
  belongs_to :actor


  def character_attributes=(character_attributes)

    # character_attributes = {name: , tv_show_name: 'pulp fiction', actor_name: ''}}

    tv_show = TvShow.find_or_create_by(name: character_attributes[:tv_show_name])
    actor = Actor.find_or_create_by(name: character_attributes[:actor_name])
    self.name = character_attributes[:name]
    self.tv_show = tv_show
    self.actor =  actor

  end
end

character = Character.new()
character.character_attributes=({name: , tv_show_name: 'pulp fiction', actor_name: ''}})

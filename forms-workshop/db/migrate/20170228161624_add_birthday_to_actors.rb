class AddBirthdayToActors < ActiveRecord::Migration[5.0]
  def change
    add_column :actors, :birthday, :string
    create_table :characters do |t|
      t.string :name
      t.integer :movie_id
      t.integer :actor_id

      t.timestamps
    end
  end
end

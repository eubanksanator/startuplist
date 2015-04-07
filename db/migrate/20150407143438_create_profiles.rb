class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :picture
      t.text :bio
      t.string :email
      t.string :twitter
      t.string :website
      t.string :github
      t.string :dribble
      t.boolean :public
      t.string :portfolio

      t.timestamps null: false
    end
  end
end

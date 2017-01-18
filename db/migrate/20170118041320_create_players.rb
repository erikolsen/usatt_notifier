class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :maker_url
      t.string :profile_page
      t.string :rating

      t.timestamps null: false
    end
  end
end

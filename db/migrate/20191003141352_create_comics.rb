class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :panel_description
       t.timestamps
    end
  end
end

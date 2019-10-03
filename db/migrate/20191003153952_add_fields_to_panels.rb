class AddFieldsToPanels < ActiveRecord::Migration[5.2]
  def change
    add_column :panels, :comic_id, :integer
  end
end

class RenameBikesToRoadbikes < ActiveRecord::Migration[5.0]
  def change
    rename_table :bikes, :roadbikes
  end
end

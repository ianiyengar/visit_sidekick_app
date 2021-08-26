class AddCheckboxesToNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :pronunciations, :boolean, default: false
    add_column :notes, :reach, :boolean, default: false
    add_column :notes, :metgoal, :boolean, default: false
    add_column :notes, :needswork, :boolean, default: false
  end
end

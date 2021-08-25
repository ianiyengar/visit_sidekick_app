class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :client_id
      t.string :date
      t.string :content

      t.timestamps
    end
  end
end

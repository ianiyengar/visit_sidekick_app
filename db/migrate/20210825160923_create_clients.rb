class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :visit_id
      t.string :goals
      t.string :trials

      t.timestamps
    end
  end
end

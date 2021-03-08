class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :decription
      t.integer :status, default: 0

      t.timestamps
    end
  end
end

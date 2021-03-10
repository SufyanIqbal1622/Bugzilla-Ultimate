class CreateFeatures < ActiveRecord::Migration[6.1]
  def change
    create_table :features do |t|
      t.string :name
      t.text :description
      t.string :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end

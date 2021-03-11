class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.references :project, null: false, foreign_key: true
      t.string :problem_statment
      t.text :repro
      t.string :result
      t.string :expected_result
      t.integer :status

      t.timestamps
    end
  end
end

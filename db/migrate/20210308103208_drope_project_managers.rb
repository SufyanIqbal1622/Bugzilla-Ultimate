class DropeProjectManagers < ActiveRecord::Migration[6.1]
  def change
    drop_table :project_managers
  end
end

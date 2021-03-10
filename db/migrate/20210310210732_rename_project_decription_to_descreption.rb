class RenameProjectDecriptionToDescreption < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :decription, :descreption
  end
end

class RenameTytleToTitleInPrototypes < ActiveRecord::Migration[6.0]
  def change
    rename_column :prototypes, :tytle, :title
  end
end

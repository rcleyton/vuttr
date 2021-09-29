class AddTagsToTools < ActiveRecord::Migration[6.1]
  def change
    add_column :tools, :tags, :string, array: true, default: []
  end
end

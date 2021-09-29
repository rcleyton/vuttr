class CreateTools < ActiveRecord::Migration[6.1]
  def change
    create_table :tools do |t|
      t.string :title
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end

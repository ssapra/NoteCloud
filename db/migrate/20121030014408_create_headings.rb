class CreateHeadings < ActiveRecord::Migration
  def change
    create_table :headings do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end

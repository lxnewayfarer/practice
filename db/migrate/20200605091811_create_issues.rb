class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.string :name
      t.text :text
      t.date :user_id
      
      t.timestamps
    end
  end
end

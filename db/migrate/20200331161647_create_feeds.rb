class CreateFeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :feeds do |t|
      t.integer :user_id
      t.string :text
      t.string :picture
      t.timestamps
    end
  end
end

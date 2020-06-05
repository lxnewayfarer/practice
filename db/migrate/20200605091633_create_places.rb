class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city_id
      t.timestamps
    end
  end
end

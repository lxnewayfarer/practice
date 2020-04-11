class ChangeReleaseToDate < ActiveRecord::Migration[6.0]
  def change
    change_column :albums, :release, :date, using: 'release::date'
  end
end

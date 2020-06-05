class AddEventToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :event_id, :string
  end
end

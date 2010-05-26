class CreateClientEvents < ActiveRecord::Migration
  def self.up
    create_table :client_events do |t|
      t.column  :client_id,  :integer
      t.column  :event_id, :integer
      t.timestamps
    end
    add_index :client_events, :client_id, :name => 'client_id_ix'
    add_index :client_events, :event_id, :name => 'event_id_ix'
  end

  def self.down
    drop_table :client_events
  end
end

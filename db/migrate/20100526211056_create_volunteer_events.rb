class CreateVolunteerEvents < ActiveRecord::Migration
  def self.up
    create_table :volunteer_events do |t|
      t.column  :volunteer_id,  :integer
      t.column  :event_id,    :integer
      t.timestamps
    end
    add_index :volunteer_events, :volunteer_id, :name => 'volunteer_id_ix'
    add_index :volunteer_events, :event_id, :name => 'event_id_ix'
  end

  def self.down
    drop_table :volunteer_events
  end
end

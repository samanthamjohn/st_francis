class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.column :name,         :string, :limit => 100
      t.column :location,     :string, :limit => 100
      t.column :description,  :text
      t.column  :date,        :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end

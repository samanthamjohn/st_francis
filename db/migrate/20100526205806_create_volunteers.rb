class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.column  :first_name,  :string,  :limit => 100
      t.column  :last_name,   :string,  :limit => 100
      t.column  :phone_num,   :integer
      t.column  :email,       :string,  :limit => 50
      t.column  :join_date,   :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end

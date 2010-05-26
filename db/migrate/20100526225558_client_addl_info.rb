class ClientAddlInfo < ActiveRecord::Migration
  def self.up
    add_column  :clients, :address1, :string, :limit => 100
    add_column  :clients, :address2, :string, :limit => 100
    add_column  :clients, :state,    :string, :limit => 20
  end

  def self.down
    remove_column  :clients, :address1
    remove_column  :clients, :address2
    remove_column  :clients, :state
  end
end
class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.column  :first_name,  :string,  :limit => 100
      t.column  :last_name,   :string,  :limit => 100
      t.column  :city,        :string,  :limit => 100
      t.column  :zip_code,    :integer
      t.column  :phone_num,   :integer
      t.column  :email,       :string,  :limit => 50
      t.column  :join_date,   :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
class CreateClientPrograms < ActiveRecord::Migration
  def self.up
    create_table :client_programs do |t|
      t.column  :client_id,  :integer
      t.column  :program_id, :integer
      t.timestamps
    end
      add_index :client_programs, :client_id, :name => 'client_id_ix'
      add_index :client_programs, :program_id, :name => 'program_id_ix'
  end

  def self.down
    drop_table :client_programs
  end
end

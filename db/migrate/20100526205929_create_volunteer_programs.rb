class CreateVolunteerPrograms < ActiveRecord::Migration
  def self.up
    create_table :volunteer_programs do |t|
      t.column  :volunteer_id,  :integer
      t.column  :program_id,    :integer
      t.timestamps
    end
    add_index :volunteer_programs, :volunteer_id, :name => 'volunteer_id_ix'
    add_index :volunteer_programs, :program_id, :name => 'program_id_ix'
  end

  def self.down
    drop_table :volunteer_programs
  end
end

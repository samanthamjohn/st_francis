class VolunteerProgram < ActiveRecord::Base
  belongs_to  :volunteer
  belongs_to  :program
  
  def self.add_volunteers(params)
    volunteer_ids = params[:volunteer_ids].collect{|vi| vi.to_s}
    program_id = params[:program][:id]
    volunteer_ids.each do |volunteer_id|
      if (VolunteerProgram.find(:first, :conditions=>["volunteer_id = ? AND program_id = ?", volunteer_id, program_id]) == nil)
        VolunteerProgram.create("volunteer_id" => volunteer_id, "program_id" => program_id)
      end
    end
  end
  
end

class VolunteerEvent < ActiveRecord::Base
  belongs_to  :event
  belongs_to  :volunteer


  def self.add_volunteers(params)
    volunteer_ids = params[:volunteer_ids].collect{|vi| vi.to_s}
    event_id = params[:event][:id]
    volunteer_ids.each do |volunteer_id|
      if (VolunteerEvent.find(:first, :conditions=>["volunteer_id = ? AND event_id = ?", volunteer_id, event_id]) == nil)
        VolunteerEvent.create("volunteer_id" => volunteer_id, "event_id" => event_id)
      end
    end
  end
  
end

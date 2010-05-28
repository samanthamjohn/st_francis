class VolunteerEventsController < ApplicationController
  # GET /volunteer_events
  # GET /volunteer_events.xml
  def index
    @volunteer_events = VolunteerEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @volunteer_events }
    end
  end

  # GET /volunteer_events/1
  # GET /volunteer_events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /volunteer_events/new
  # GET /volunteer_events/new.xml
  def new
    @volunteer_event = VolunteerEvent.new
    @event = Event.find(params[:id])
    @volunteers = Volunteer.all
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volunteer_event }
    end
  end

  # GET /volunteer_events/1/edit
  def edit
    @volunteer_event = VolunteerEvent.find(params[:id])
  end

  # POST /volunteer_events
  # POST /volunteer_events.xml
  def create
    event = Event.find(params[:event][:id])
    respond_to do |format|  
      if VolunteerEvent.add_volunteers(params)
        flash[:notice] = 'Volunteers were successfully added to event.'
        #format.html {render  "events/:id", :controller => "events", :action => "show", :id => event_id}
        format.html {redirect_to(event, :controller => "events")}
        #format.html {redirect_to(show_event_path({"id"=>event_id})) }
        #format.xml  { render :xml => @volunteer_event, :status => :created, :location => @volunteer_event }
      else
        format.html { render :action => "new" }
       # format.xml  { render :xml => @volunteer_event.errors, :status => :unprocessable_entity }
      end
    end

  end

  # PUT /volunteer_events/1
  # PUT /volunteer_events/1.xml
  def update
    @volunteer_event = VolunteerEvent.find(params[:id])

    respond_to do |format|
      if @volunteer_event.update_attributes(params[:volunteer_event])
        flash[:notice] = 'VolunteerEvent was successfully updated.'
        format.html { redirect_to(@volunteer_event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @volunteer_event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_events/1
  # DELETE /volunteer_events/1.xml
  def destroy
    @volunteer_event = VolunteerEvent.find(params[:id])
    @volunteer_event.destroy

    respond_to do |format|
      format.html { redirect_to(volunteer_events_url) }
      format.xml  { head :ok }
    end
  end
end

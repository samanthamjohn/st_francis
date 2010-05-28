class VolunteerProgramsController < ApplicationController
  # GET /volunteer_programs
  # GET /volunteer_programs.xml
  def index
    @volunteer_programs = VolunteerProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @volunteer_programs }
    end
  end

  # GET /volunteer_programs/1
  # GET /volunteer_programs/1.xml
  def show
    @volunteer_program = VolunteerProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @volunteer_program }
    end
  end

  # GET /volunteer_programs/new
  # GET /volunteer_programs/new.xml
  def new
    @volunteer_program = VolunteerProgram.new
     @program = Program.find(params[:id])
     @volunteers = Volunteer.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @volunteer_program }
    end
  end

  # GET /volunteer_programs/1/edit
  def edit
    @volunteer_program = VolunteerProgram.find(params[:id])
  end

  # POST /volunteer_programs
  # POST /volunteer_programs.xml
  def create
     program = Program.find(params[:program][:id])
      respond_to do |format|  
        if VolunteerProgram.add_volunteers(params)
          flash[:notice] = 'Volunteers were successfully added to program.'
          #format.html {render  "programs/:id", :controller => "programs", :action => "show", :id => program_id}
          format.html {redirect_to(program, :controller => "programs")}
          #format.html {redirect_to(show_program_path({"id"=>program_id})) }
          #format.xml  { render :xml => @volunteer_program, :status => :created, :location => @volunteer_program }
        else
          format.html { render :action => "new" }
         # format.xml  { render :xml => @volunteer_program.errors, :status => :unprocessable_entity }
        end
      end
  end

  # PUT /volunteer_programs/1
  # PUT /volunteer_programs/1.xml
  def update
    @volunteer_program = VolunteerProgram.find(params[:id])

    respond_to do |format|
      if @volunteer_program.update_attributes(params[:volunteer_program])
        flash[:notice] = 'VolunteerProgram was successfully updated.'
        format.html { redirect_to(@volunteer_program) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @volunteer_program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_programs/1
  # DELETE /volunteer_programs/1.xml
  def destroy
    @volunteer_program = VolunteerProgram.find(params[:id])
    @volunteer_program.destroy

    respond_to do |format|
      format.html { redirect_to(volunteer_programs_url) }
      format.xml  { head :ok }
    end
  end
end

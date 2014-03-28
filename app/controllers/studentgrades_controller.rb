class StudentsgradesController < ApplicationController
  # GET /students
  # GET /students.json
  def index
    #Rails.logger.info "in index"
    @studentgrade = Studentgrade.all
    #Rails.logger.info "after @students assignment"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @studentgrades }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @studentgrade = Studentgrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @studentgrade }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @studentgrade = Studentgrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @studentgrade }
    end
  end

  # GET /students/1/edit
  def edit
    @studentgrade = Studentgrade.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @studentgrade = Studentgrade.new(params[:student])

    respond_to do |format|
      if @studentgrade.save
        format.html { redirect_to @studentgrade, notice: 'Student was successfully created.' }
        format.json { render json: @studentgrade, status: :created, location: @studentgrade }
      else
        format.html { render action: "new" }
        format.json { render json: @studentgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @studentgrade = Studentgrade.find(params[:id])

    respond_to do |format|
      if @studentgrade.update_attributes(params[:studentgrade])
        format.html { redirect_to @studentgrade, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @studentgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @studentgrade = Studentgrade.find(params[:id])
    @studentgrade.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

end
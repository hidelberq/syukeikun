class ScreeningsController < ApplicationController
  # GET /screenings
  # GET /screenings.json
  def index
    @screenings = Screening.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @screenings }
    end
  end

  # GET /screenings/1
  # GET /screenings/1.json
  def show
    @screening = Screening.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @screening }
    end
  end

  # GET /screenings/new
  # GET /screenings/new.json
  def new
    @screening = Screening.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @screening }
    end
  end

  # GET /screenings/1/edit
  def edit
    @screening = Screening.find(params[:id])
  end

  # POST /screenings
  # POST /screenings.json
  def create
    @screening = Screening.new(params[:screening])

    respond_to do |format|
      if @screening.save
        format.html { redirect_to @screening, notice: 'Screening was successfully created.' }
        format.json { render json: @screening, status: :created, location: @screening }
      else
        format.html { render action: "new" }
        format.json { render json: @screening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /screenings/1
  # PUT /screenings/1.json
  def update
    @screening = Screening.find(params[:id])

    respond_to do |format|
      if @screening.update_attributes(params[:screening])
        format.html { redirect_to @screening, notice: 'Screening was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @screening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /screenings/1
  # DELETE /screenings/1.json
  def destroy
    @screening = Screening.find(params[:id])
    @screening.destroy

    respond_to do |format|
      format.html { redirect_to screenings_url }
      format.json { head :no_content }
    end
  end
end

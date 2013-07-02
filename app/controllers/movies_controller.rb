class MoviesController < ApplicationController
  # GET /movies
  # GET /movies.json
  def index
    @screening = Screening.find(params[:screening_id])
    @movies = @screening.movies

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movies }
    end
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
    @movie = Movie.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/new
  # GET /movies/new.json
  def new
    @screening = Screening.find(params[:screening_id])
    @movie  = @screening.movies.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movie }
    end
  end

  # GET /movies/1/edit
  def edit
    @screening = Screening.find(params[:screening_id])
    @movie = @screening.movies.find(params[:id])
  end

  # POST /movies
  # POST /movies.json
  def create
    @screening = Screening.find(params[:screening_id])
    @movie = @screening.movies.new(params[:movie])

    respond_to do |format|
      if @movie.save
        format.html { redirect_to screening_movies_path(@screening), notice: 'Movie was successfully created.' }
        format.json { render json: @movie, status: :created, location: @movie }
      else
        format.html { render action: "new" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movies/1
  # PUT /movies/1.json
  def update
    @screening = Screening.find(params[:screening_id])
    @movie = @screening.movies.find(params[:id])

    respond_to do |format|
      if @movie.update_attributes(params[:movie])
        format.html { redirect_to screening_movies_path(@screening), notice: 'Movie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @screening = Screening.find(params[:screening_id])
    @movie = @screening.movies.find(params[:id])
    @movie.destroy

    respond_to do |format|
      format.html { redirect_to screening_movies_path(@screening) }
      format.json { head :no_content }
    end
  end
end

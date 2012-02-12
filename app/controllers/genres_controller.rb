require 'json'
require 'open-uri'

class GenresController < ApplicationController

  before_filter :json_genre

  def json_genre
    list = JSON.parse(open("https://readitlaterlist.com/v2/get?username=apillai&password=windiciti&apikey=e7ad2l8bTg2d4g4459A4d07Obdg7QKMn").read)["list"]

    
      

  end


    def index
      @genres = Genre.all

      respond_to do |format|
        format.html 
        format.json { render json: @genre }
      end
    end

    def show
      @genre = Genre.find(params[:id])

      respond_to do |format|
        format.html 
        format.json { render json: @genre }
      end
    end

    def new
      @genre = Genre.new

      respond_to do |format|
        format.html
        format.json { render json: @genre }
      end
    end

    def edit
      @genre = Genre.find(params[:id])
    end

    def create
      @genre = Genre.new(params[:genre])

      respond_to do |format|
        if @genre.save
          format.html { redirect_to @genre, notice: 'Genre was successfully created.' }
          format.json { render json: @genre, status: :created, location: @genre }
        else
          format.html { render action: "new" }
          format.json { render json: @genre.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      @genre = Genre.find(params[:id])

      respond_to do |format|
        if @genre.update_attributes(params[:genre])
          format.html { redirect_to @genre, notice: 'Genre was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @genre.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @genre = Genre.find(params[:id])
      @genre.destroy

      respond_to do |format|
        format.html { redirect_to genres_url }
        format.json { head :no_content }
      end
    end
  end
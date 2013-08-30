class ShortsController < ApplicationController
    # GET /shorts/1
  # GET /shorts/1.json
  def show
    @short = Short.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @short }
    end
  end

  # GET /shorts/new
  # GET /shorts/new.json
  def new
    @short = Short.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @short }
    end
  end

 
  # POST /shorts
  # POST /shorts.json
  def create
    @short = Short.new(params[:short])

    respond_to do |format|
      if @short.save
        format.html { redirect_to @short, notice: 'Short was successfully created.' }
        format.json { render json: @short, status: :created, location: @short }
      else
        format.html { render action: "new" }
        format.json { render json: @short.errors, status: :unprocessable_entity }
      end
    end
  end
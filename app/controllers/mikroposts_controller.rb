class MikropostsController < ApplicationController
  # GET /mikroposts
  # GET /mikroposts.json
  def index
    @mikroposts = Mikropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @mikroposts }
    end
  end

  # GET /mikroposts/1
  # GET /mikroposts/1.json
  def show
    @mikropost = Mikropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @mikropost }
    end
  end

  # GET /mikroposts/new
  # GET /mikroposts/new.json
  def new
    @mikropost = Mikropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @mikropost }
    end
  end

  # GET /mikroposts/1/edit
  def edit
    @mikropost = Mikropost.find(params[:id])
  end

  # POST /mikroposts
  # POST /mikroposts.json
  def create
    @mikropost = Mikropost.new(params[:mikropost])

    respond_to do |format|
      if @mikropost.save
        format.html { redirect_to @mikropost, :notice => 'Mikropost was successfully created.' }
        format.json { render :json => @mikropost, :status => :created, :location => @mikropost }
      else
        format.html { render :action => "new" }
        format.json { render :json => @mikropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mikroposts/1
  # PUT /mikroposts/1.json
  def update
    @mikropost = Mikropost.find(params[:id])

    respond_to do |format|
      if @mikropost.update_attributes(params[:mikropost])
        format.html { redirect_to @mikropost, :notice => 'Mikropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @mikropost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mikroposts/1
  # DELETE /mikroposts/1.json
  def destroy
    @mikropost = Mikropost.find(params[:id])
    @mikropost.destroy

    respond_to do |format|
      format.html { redirect_to mikroposts_url }
      format.json { head :no_content }
    end
  end
end

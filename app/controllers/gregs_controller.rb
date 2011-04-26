class GregsController < ApplicationController
  # GET /gregs
  # GET /gregs.xml
  def index
    @gregs = Greg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gregs }
    end
  end

  # GET /gregs/1
  # GET /gregs/1.xml
  def show
    @greg = Greg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @greg }
    end
  end

  # GET /gregs/new
  # GET /gregs/new.xml
  def new
    @greg = Greg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @greg }
    end
  end

  # GET /gregs/1/edit
  def edit
    @greg = Greg.find(params[:id])
  end

  # POST /gregs
  # POST /gregs.xml
  def create
    @greg = Greg.new(params[:greg])

    respond_to do |format|
      if @greg.save
        format.html { redirect_to(edit_greg_path(@greg), :notice => 'Greg was successfully created.') }
        format.xml  { render :xml => @greg, :status => :created, :location => @greg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @greg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gregs/1
  # PUT /gregs/1.xml
  def update
    @greg = Greg.find(params[:id])

    respond_to do |format|
      if @greg.update_attributes(params[:greg])
        format.html { redirect_to(@greg, :notice => 'Greg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @greg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gregs/1
  # DELETE /gregs/1.xml
  def destroy
    @greg = Greg.find(params[:id])
    @greg.destroy

    respond_to do |format|
      format.html { redirect_to(gregs_url) }
      format.xml  { head :ok }
    end
  end
end

class EchoformsController < ApplicationController
  # GET /echoforms
  # GET /echoforms.json
  def index
    @echoforms = Echoform.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @echoforms }
    end
  end

  # GET /echoforms/1
  # GET /echoforms/1.json
  def show
    @echoform = Echoform.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @echoform }
    end
  end

  # GET /echoforms/new
  # GET /echoforms/new.json
  def new
    @echoform = Echoform.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @echoform }
    end
  end

  # GET /echoforms/1/edit
  def edit
    @echoform = Echoform.find(params[:id])
  end

  # POST /echoforms
  # POST /echoforms.json
  def create
    @echoform = Echoform.new(params[:echoform])

    respond_to do |format|
      if @echoform.save
        format.html { redirect_to @echoform, notice: 'Echoform was successfully created.' }
        format.json { render json: @echoform, status: :created, location: @echoform }
      else
        format.html { render action: "new" }
        format.json { render json: @echoform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /echoforms/1
  # PUT /echoforms/1.json
  def update
    @echoform = Echoform.find(params[:id])

    respond_to do |format|
      if @echoform.update_attributes(params[:echoform])
        format.html { redirect_to @echoform, notice: 'Echoform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @echoform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /echoforms/1
  # DELETE /echoforms/1.json
  def destroy
    @echoform = Echoform.find(params[:id])
    @echoform.destroy

    respond_to do |format|
      format.html { redirect_to echoforms_url }
      format.json { head :no_content }
    end
  end
end

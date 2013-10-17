class StepsController < ApplicationController
  # GET /steps
  # GET /steps.json
  before_filter :load_tutorial

  def index
    @steps = Step.all
  end

  # GET /steps/1
  # GET /steps/1.json
  def show
    @step = Step.find(params[:id])
  end

  # GET /steps/new
  # GET /steps/new.json
  def new
    @step = Step.new
  end

  # GET /steps/1/edit
  def edit
    @step = Step.find(params[:id])
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(params[:id])

    respond_to do |format|
      if @step.save
        format.html { redirect_to [@tutorial, @step], notice: 'Step was successfully created.' }
        format.json { render json: @step, status: :created, location: @step }
      else
        format.html { render action: "new" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /steps/1
  # PUT /steps/1.json
  def update
    @step = Step.find(params[:id])

    respond_to do |format|
      if @step.update_attributes(params[:step])
        format.html { redirect_to [@tutorial, @step], notice: 'Step was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    @step = Step.find(params[:id])
    @step.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_steps_path(@tutorial) }
      format.json { head :no_content }
    end
  end

  def load_tutorial
    @tutorial = Tutorial.find(params[:tutorial_id])
  end
end

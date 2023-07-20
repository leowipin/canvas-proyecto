class PlannerNotesController < ApplicationController
  before_action :set_planner_note, only: %i[ show edit update destroy ]

  # GET /planner_notes or /planner_notes.json
  def index
    @planner_notes = PlannerNote.all
  end

  # GET /planner_notes/1 or /planner_notes/1.json
  def show
  end

  # GET /planner_notes/new
  def new
    @planner_note = PlannerNote.new
  end

  # GET /planner_notes/1/edit
  def edit
  end

  # POST /planner_notes or /planner_notes.json
  def create
    @planner_note = PlannerNote.new(planner_note_params)

    respond_to do |format|
      if @planner_note.save
        format.html { redirect_to planner_note_url(@planner_note), notice: "Planner note was successfully created." }
        format.json { render :show, status: :created, location: @planner_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @planner_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planner_notes/1 or /planner_notes/1.json
  def update
    respond_to do |format|
      if @planner_note.update(planner_note_params)
        format.html { redirect_to planner_note_url(@planner_note), notice: "Planner note was successfully updated." }
        format.json { render :show, status: :ok, location: @planner_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @planner_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planner_notes/1 or /planner_notes/1.json
  def destroy
    @planner_note.destroy

    respond_to do |format|
      format.html { redirect_to planner_notes_url, notice: "Planner note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planner_note
      @planner_note = PlannerNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planner_note_params
      params.require(:planner_note).permit(:todo_date, :title, :details, :student_id, :course_id, :workflow_state)
    end
end

class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show edit update destroy ]
  before_action :set_categories, only: %i[ new create edit update ]
  before_action :set_time_alert, only: %i[ create update destroy]

  # GET /questions or /questions.json
  def index
    filtered = Question.where("question LIKE ?", "%#{params[:filter]}%")
    @pagy, @questions = pagy(filtered.all, items: 10)
    @filter = params[:filter]

    # Question.all.each do |question|
    #   question.answers.create(answer: "Se quedo sin tiempo", is_correct: false, active: false)
    # end
  end

  # GET /questions/1 or /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions or /questions.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to questions_url(@question), notice: "Pregunta agregaga." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to questions_url(@question), notice: "Pregunta actualizada." }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    @question.destroy

    respond_to do |format|
      format.html { redirect_to questions_url, notice: "Question was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    def set_categories
      @categories = Category.all
    end

    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:question, :score, :category_id, :image)
    end

    def set_time_alert
      @time_alert = '3'
    end

end

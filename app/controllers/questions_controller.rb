class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @question = Question.new
  end

  def edit
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:success] = 'Question was successfully created.'
      redirect_to questions_path, notice: 'Question was successfully created.'
    else
      render :new
    end
  end

  def update
      if @question.update(question_params)
        redirect_to @question, notice: 'Question was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @question.destroy
    flash[:success] = 'Question was successfully deleted.'
    redirect_to questions_path
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:question)
    end
end

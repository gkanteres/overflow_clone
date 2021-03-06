class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  before_action :set_question, only: [:index, :show, :new, :create, :edit, :update]
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @answers = @question.answers
  end

  def show
  end

  def new
    @answer = @question.answers.new
  end

  def edit
  end

  def create
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to questions_path, notice: 'Answer was successfully created.'
    else
      render :new
    end
  end

  def update
      if @answer.update(answer_params)
        redirect_to question_path(@question)
      else
        render :edit
      end
  end

  def destroy
    @answer.destroy
      flash[:success] = "Successfully deleted"
      redirect_to questions_path
  end

  private

    def set_answer
      @answer = Answer.find(params[:id])
    end

    def set_question
      @question = Question.find(params[:question_id])
    end

    def answer_params
      params.require(:answer).permit(:answer, :user_id)
    end
end

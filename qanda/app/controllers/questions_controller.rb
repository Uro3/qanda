class QuestionsController < ApplicationController
  before_action :redirect_to_login_if_not_logged_in, only: [:new, :create]

  def index
    @questions = Question.all
  end

  def new
    @question = current_user.questions.build
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  private

    def question_params
      params.require(:question).permit(:title, :content)
    end
end

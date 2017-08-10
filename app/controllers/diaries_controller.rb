class DiariesController < ApplicationController
  def index
        @diary = Diary.new
        @diaries = Diary.order(id: :desc)
  end

  def create
        t = Diary.new(params[:diary].permit(:category, :name, :servings, :calories, :date))
        t.save
        redirect_to diaries_url
  end

  def new
  end

  def edit
    @diary = Diary.find(params[:id])
    @diaries = Diary.order(id: :desc)
    render 'index'
  end

  def show
  end

  def update
    task=Diary.find(params[:id])
    task.update(params[:task].permit(:category, :name, :servings, :calories, :date))
    redirect_to diaries_url
  end

  def update
  end

  def destroy
    t= Diary.find(params[:id])
    t.destroy
    redirect_to diaries_url
  end
end
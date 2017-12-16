class MemoController < ApplicationController
  protect_from_forgery :except => [:create, :update]

  def all()
    memos = Memo.all

    render :json => memos
  end

  def create()
    content = params[:content]
    memo = Memo.new(content: content)
    result = memo.save

    render :json => memo
  end

  def update()
    id = params[:id]
    content = params[:content]

    memo = Memo.find(id)
    memo.content = content
    result = memo.save

    render :json => memo
  end
end

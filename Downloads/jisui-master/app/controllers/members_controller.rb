class MembersController < ApplicationController
  #会員一覧
  def index
    @members = Member.order("number")
  end

  def show
  end
#新規作成フォーム
  def new
    @member = Member.new()
  end
#更新フォーム
  def edit
    @member =Member.find(params[:id])
  end

  def create
    @member=Member.new(params[:member])
    if @member.save
    redirect_to @member, notice: "会員登録しました"
    else
    render "new"
    end
  end

  def update
  end

  def destroy
  end
end

class TodolistsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数にからのモデルオブジェクトを生成する
    @list = List.new
  end
  
  def create
    # データを新規登録するインスタンス制作
    list = List.new(list_params)
    # データベースへの保存のためのsaveメソッド実行
    list.save
    #トップ画面へリダイレクト
    redirect_to '/top'
  end

private
# ストロングパラメータ？？
def list_params
  params.require(:list).permit(:title, :body)
end

end
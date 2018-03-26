class TwClonesController < ApplicationController
  before_action :set_tw, only: [:edit, :update, :destroy]

  def top
  end

  def index
    @twclones = TwClone.all
  end

  def new
    if params[:back]
      @twclone = TwClone.new(tw_params)
    else
      @twclone = TwClone.new
    end
  end

  def create
    @twclone = TwClone.new(tw_params)
    if @twclone.save
      redirect_to new_tw_clone_path, notice: "つぶやきを投稿しました！！"
    else
      render 'new'
    end
  end

  def edit
  end
  def update

    if @twclone.update(tw_params)
      redirect_to tw_clones_path, notice: "つぶやきを編集しました！！"
    else
      render 'edit'
    end
  end

  def destroy
    TwClone.destroy
    redirect_to tw_clones_path, notice:"つぶやきを削除しました！！"
  end

  def confirm
    @twclone = TwClone.new(tw_params)
    render :new if @twclone.invalid?
  end


  private
  def tw_params
    params.require(:tw_clone).permit(:content)
  end
  def set_tw
    @twclone = TwClone.find(params[:id])
  end
end

class QnaController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:add_process, :edit_process, :delete_process]
  def list
  	@numbers = Qna.all
  end

  def add
  end

  def add_process
  n = Qna.new
  n.name = params[:name]
  n.question = params[:question]
	if n.save
		redirect_to "/qna/list"
	else
		flash[:alert] = n.errors[:question][0]
		redirect_to :back
	end
  end

  def edit_process
  n = Qna.find(params[:id])
  n.name = params[:writer_edit]
  n.question = params[:question_edit]
  if n.save
  	redirect_to "/qna/list"
  else
	flash[:alert] = n.errors[:question][0]
	redirect_to :back
  end
  end

  def edit
  	@post_edit = Qna.find(params[:id])
  end

  def delete
  	@post_delete = Qna.find(params[:id])
  end

  def delete_process
    n = Qna.find(params[:id])
	n.destroy

	redirect_to "/qna/list"
  end
end

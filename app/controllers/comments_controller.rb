class CommentsController < ApplicationController
  def create
    ticket = Ticket.find(params[:ticket_id])
    comment = ticket.comments.new(params[:comment])
    comment.user = current_user
    comment.save
    redirect_to user_tickets_path(:anchor => "comment-#{comment.id}")
  end  
end

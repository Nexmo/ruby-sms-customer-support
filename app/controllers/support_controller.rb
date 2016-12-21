class SupportController < ApplicationController
  def index
    save_message
    send_response
    render nothing: true
  end

  private

  def ticket
    @ticket ||= Ticket.where(
      number: params[:msisdn]
    ).first_or_create
  end

  def save_message
    message = Message.create(
      text: params[:text],
      ticket: ticket
    )
  end

  def send_response
    return if ticket.messages.count > 1

    client = Nexmo::Client.new
    result = client.send_message(
      from: ENV['NEXMO_NUMBER'],
      to: ticket.number,
      text: "Dear customer, your support" \
            "request has been registered. " \
            "Your ticket number is #{ticket.id}. " \
            "We intend to get back to any " \
            "support requests within 24h."
    )
  end
end

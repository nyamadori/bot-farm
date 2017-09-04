module Responder
  class Message < Base
    def match?(event)
      event.text.match?(params[:pattern])
    end
  end
end

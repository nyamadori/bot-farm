module HookKind
  class Message < Base
    def triggered_by?(event)
      event[:text].match?(params[:pattern])
    end
  end
end

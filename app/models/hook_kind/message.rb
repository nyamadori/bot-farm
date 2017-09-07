module HookKind
  class Message < Base
    attr_accessor :pattern

    def triggered_by?(event)
      event[:text].match?(pattern)
    end
  end
end

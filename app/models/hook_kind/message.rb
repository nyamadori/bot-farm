module HookKind
  class Message < Base
    attr_accessor :pattern

    def triggered_by?(event)
      matches = event[:text].match(pattern)
      return false if matches.blank?

      hook.arguments = matches[1..-1]
      true
    end
  end
end

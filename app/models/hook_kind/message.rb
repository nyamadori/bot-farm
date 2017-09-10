module HookKind
  class Message < Base
    attr_accessor :pattern

    def match(event)
      matches = event[:text].match(pattern)
      matches ? matches.to_a[1..-1] : nil
    end
  end
end

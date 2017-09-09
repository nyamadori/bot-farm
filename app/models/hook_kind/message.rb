module HookKind
  class Message < Base
    attr_accessor :pattern

    def triggered_by?(event)
      args = event[:text].match(pattern).try(:[], 1..-1)
      hook.arguments = args
      args.present?
    end
  end
end

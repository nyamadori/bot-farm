module HookKind
  class Base
    include ActiveModel::Model

    def match(event)
      raise NotImplementedError, 'this method needs to be overridden in subclass'
    end
  end
end

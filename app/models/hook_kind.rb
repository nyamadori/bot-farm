module HookKind
  class << self
    def class_get(name)
      self.const_get(name.to_s.classify)
    end
  end
end

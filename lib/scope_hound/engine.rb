# frozen_string_literal: true

class Engine
  module ScopeHound
    # Include the rails engine
    class Engine < ::Rails::Engine
      isolate_namespace ScopeHound
    end
  end
end

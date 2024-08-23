# frozen_string_literal: true

module ScopeHound
  # Include the Rails engine
  class Engine < ::Rails::Engine
    isolate_namespace ScopeHound

    initializer "scope_hound.autoload_paths" do |app|
      # Auto-load the concerns following Rails conventions
      config.autoload_paths << root.join('lib', 'scope_hound', 'models', 'concerns')
      config.autoload_paths << root.join('lib', 'scope_hound', 'controllers', 'concerns')
    end
  end
end

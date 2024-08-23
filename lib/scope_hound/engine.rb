# frozen_string_literal: true

module ScopeHound
  # Initialize the rails engine for the gem.
  class Engine < ::Rails::Engine
    isolate_namespace ScopeHound

    config.autoload_paths << root.join('lib', 'scope_hound', 'models', 'concerns')
    config.autoload_paths << root.join('lib', 'scope_hound', 'controllers', 'concerns')
  end
end
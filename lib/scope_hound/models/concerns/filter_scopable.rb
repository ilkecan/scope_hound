# frozen_string_literal: true

module ScopeHound
  module Models
    module Concerns
      # Helps to generate filter concerns
      module FilterScopable
        extend ActiveSupport::Concern

        def filter_scope(name, block)
          define_method(name) do |filter_value|
            return self if filter_value.blank?

            instance_exec(filter_value, &block)
          end
        end

        def filter_scope_path_for(scope, path = nil)
          path = scope.to_s if path.nil?
          filter_scopes_paths[scope] = path
        end

        def filter_scopes_paths
          @filter_scopes_paths ||= {}
        end
      end
    end
  end
end

# frozen_string_literal: true

module Filters
  module PostFilterScopes
    extend ScopeHound::Models::Concerns::FilterScopable
  end

  class PostFilterProxy < ScopeHound::Models::Concerns::FilterProxy
    def self.query_scope = Post
    def self.filter_scopes_module = Filters::PostFilterScopes
  end
end

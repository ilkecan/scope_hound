# frozen_string_literal: true

class Post < ApplicationRecord
  extend ScopeHound::FilterableModel

  class << self
    def filter_proxy = Filters::PostFilterProxy
  end
end

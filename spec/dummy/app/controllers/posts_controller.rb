# frozen_string_literal: true

class PostsController < ApplicationController
  include ScopeHound::FilterableController

  def test_action
    # You can use your gem's logic here
  end

  private

  def filter_params
    {
      test_name: params[:post_name],
      test_status: params[:test_status]
    }
  end
end
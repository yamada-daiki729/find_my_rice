# frozen_string_literal: true

class TopPageController < ApplicationController
  skip_before_action :require_login, only: %i[top]
  def top; end
end

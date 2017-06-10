class WelcomeController < ApplicationController
  def index
    @annual_yield_realistically = Lean.annual_yield_realistically
  end
end

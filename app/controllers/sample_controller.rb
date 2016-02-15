class SampleController < ApplicationController
  include FormAuth
  def index
    render text: 'こんにちは、世界！'
  end
end

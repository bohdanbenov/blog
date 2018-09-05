module Placeholder
  extend ActiveSupport::Concern

  def self.imageGenerator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end
end
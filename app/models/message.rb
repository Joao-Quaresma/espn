# frozen_string_literal: true

# messages model
class Message < ApplicationRecord
  belongs_to :user
  has_many :comments
end

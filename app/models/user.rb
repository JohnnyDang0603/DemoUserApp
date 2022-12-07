# frozen_string_literal: true

class User < ApplicationRecord
  has_many :timesheets

  GENDER_COLLECTIONS = %w[male female].freeze

  validates :username, length: { in: 8..16, allow_nil: false }, uniqueness: true
  validates :age, numericality: { greater_than_or_equal_to: 18 }
  validates :gender, inclusion: { in: GENDER_COLLECTIONS }

  before_create :hello

  def hello
    puts 'object has been created'
  end
end

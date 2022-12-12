# frozen_string_literal: true

class User < ApplicationRecord
  has_many :timesheets, dependent: :destroy

  validates :username, presence: true, length: { in: 8..16 }
  validates :gender, :email, :address, :birthday, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email,:username , uniqueness: true
  validate :age_must_be_more_than_10a
  before_save :calculate_age

  def calculate_age
    self.age = (Date.today.year - self.birthday.year if age.nil?)
  end

  def age_must_be_more_than_10a
    if (Date.today.year - self.birthday.year) <= 10
      errors.add(:birthday, '=>Age must be more than 10')
    end
  end
end

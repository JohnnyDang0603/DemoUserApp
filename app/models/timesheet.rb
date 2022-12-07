# frozen_string_literal: true

class Timesheet < ApplicationRecord
  belongs_to :user, optional: true
  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :user_id, presence: true
  validates :day, presence: true
  validate :check_day
  def check_day
    timesheets = Timesheet.where(
      '
                            user_id = :user_id AND day = :day
                            AND
                            ((check_in < :check_in AND check_out > :check_in)
                            OR
                            (check_in < :check_out AND check_out > :check_out))
                          ',
      user_id: user_id, day: day,
      check_in: check_in, check_out: check_out
    )
    errors.add(:check_in, 'check in overlap time') if timesheets.present?
  end
end

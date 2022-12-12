class Timesheet < ApplicationRecord
  belongs_to :user, optional: true
  validates :check_in, :check_out, :day, presence: true
  validate :check_out_more_then_check_in
  validate :check_day
  def check_out_more_then_check_in
    if :check_in >= :check_out
      errors.add(:check_out, 'check out must be more then check in')
    end
  end

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

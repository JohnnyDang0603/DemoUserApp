class Timesheet < ApplicationRecord
    belongs_to :user, optional: true
    validates :check_in,presence: true,length: {minimum:10},:allow_nil=>false
    # validates :check_out,comparison: { greater_than: :check_in },:allow_nil=>false
    
    #Ex:- :null => false
    # validates :check_out, presence: true
    # validates :datecheckin, presence: true
    # validate :check_day
    # validates :valid_date?
    # validate :check_out, :allow_nil=>false
    # def valid_date?
    #   unless Chronic.parse(check_in)
    #     errors.add(:check_in, "is missing or invalid")
    #   end
    # end 
    # validate :check_today,:check_day

  # def check_today
  #   if(!Chronic.parse(check_in.to_s))
  #     errors.add(:check_in, "is missing or invalid")
  #   elsif check_in.strftime("%d-%m-%Y")!=Time.now.strftime("%d-%m-%Y")
  #     errors.add(:check_in, "check phai trong ngay ")
  #   end
  # end

  # def check_day
  #   timesheets=Timesheet.where(
  #                         ' 
  #                           user_id = :user_id AND day = :day
  #                           AND
  #                           (check_in < :check_in AND check_out > :check_out)
  #                           OR
  #                           (check_in < :check_out AND check_out > :check_out)
  #                         ',
  #                         user_id: user_id, day: day,
  #                         check_in: check_in, check_out: check_out
  #                       )
  #     errors.add(:check_in, 'check in overlap time') if timesheets.present?
    # list_times2.each do |time|
    #   if(((time.check_in < check_in) && (time.check_out > check_in))||
    #     ((time.check_in < check_out) && (time.check_out > check_out)))
    #     errors.add(:check_in, "check in overlap time ")
    #     break
    #   end
    # end
  # end

  
  # def check_dayq
  #   list=Timesheet.where(users_id: users_id && datecheckin: datecheckin&&
  #     (((time.check_in < check_in) && (time.check_out > check_in)))
      
  #   )
  # end

  # scope :in_range, -> (params) do 
  #   where('
  #     user_id =   
      
      
  #   ')
  # end



  # def check_overlap
  #   list=timesheets.where(:datecheckin > datecheckin)
  #   errors.add(:check_in,"check in error #{list.count}")
  # end

  # def validate_other_booking_overlap
  #   sql = "daterange(check_in, check_out, '[]') && daterange(:check_in, :check_out, '[]')"
  #   is_overlapping = timesheets.where(sql, check_in: c.check_in, check_out: c.check_out).exists?
  #   errors.add(:overlaps_with_other) if is_overlapping
  # end
  
end
class EventAttendance < ApplicationRecord
  belongs_to :attendee, foreign_key: :event_attendee_id, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
end

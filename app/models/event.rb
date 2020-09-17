class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"

    has_many :event_attendance, foreign_key: :attended_event_id
    has_many :event_attendee, through: :event_attendance
end

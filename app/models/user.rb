class User < ApplicationRecord
    has_many :events, foreign_key: :creator_id

    has_many :event_attendance, foreign_key: :event_attendee_id
    has_many :attended_event, through: :event_attendance
end

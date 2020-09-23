class Event < ApplicationRecord
    belongs_to :creator, class_name: "User"

    has_many :event_attendances, foreign_key: :attended_event_id
    has_many :attendees, through: :event_attendances, source: :attendee

    def self.upcoming      
        where("event_date > ?", Time.now )
    end

    def self.past      
        where("event_date < ?", Time.now )
    end
end

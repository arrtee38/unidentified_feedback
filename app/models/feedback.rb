class Feedback < ApplicationRecord
    before_create :sanitize
    after_create :send_tweet

    validates_presence_of :recipient_handle, :text
    validates_length_of :text, within: 1..250

    def sanitize
        self.recipient_handle = self.recipient_handle.gsub('@', '')
    end

    def send_tweet 
        TwitterService.tweet!(self)
    end
end
class Feedback < ApplicationRecord
    #psuedo-code
    #1. user creates a feedback record
    #2. tweet the "text" attribute of the feedback,to the "recipient_handle" attribute

    after_create :send_tweet

    def send_tweet 
        puts "Sending tweet!"
    end
end
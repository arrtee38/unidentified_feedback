class FeedbacksController < ApplicationController
    def create
        # binding.break
        # feedback_params = params[:feedback]
        Feedback.create(feedback_params)
    end

    private

    def feedback_params
        params.require(:feedback).permit(:text, :recipient_handle)
    end
end
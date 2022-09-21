class PagesController < ApplicationController
    before_action :require_user, only:[:home]

    def home
        @message = Message.new
        @messages = Message.last_ten
    end
end

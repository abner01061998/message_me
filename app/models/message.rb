class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true, length:{minimum:1, maximum: 200}

    scope :last_ten, -> { order(:created_at).limit(10)}
end

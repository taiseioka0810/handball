class Input < ApplicationRecord
    belongs_to :user
    has_many :gamemembers
    has_many :gameexectives
    has_many :games
    has_many :time_outs
end

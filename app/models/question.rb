class Question < ApplicationRecord
    has_one :answer, dependent: :destroy
    has_many :answer_choices, dependent: :destroy
    has_many :question_assignments, dependent: :destroy
    has_many :skills, through: :question_assignments
    
    validates :content, presence: true, length: {maximum: 140}
    validates :correct_answer, presence: true, length: {maximum: 140}
end

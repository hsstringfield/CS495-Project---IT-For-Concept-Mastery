class Skill < ApplicationRecord
    has_many :question_assignments, dependent: :destroy
    has_many :questions, through: :question_assignments
    
    has_many :user_skills, dependent: :destroy
    has_many :users, through: :user_skills
end

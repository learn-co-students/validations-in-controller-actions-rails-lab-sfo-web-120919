class Post < ActiveRecord::Base
    belongs_to :author
    include ActiveModel::Validations
    validates_with CategoryValidator
    validates :title, presence: true
    validates :content, presence: true, length: {minimum: 50}
    validates :category, acceptance: {accept: ['Fiction', 'Non-Fiction']}
end

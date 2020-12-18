class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
  has_many :snippets, dependent: :destroy
  has_many :snippets_lists
  validates :primary_snippets_list_id, numericality: { equal_to: 1}
end

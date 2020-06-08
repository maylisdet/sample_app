# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  nom        :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  attr_accessor :nom, :email
  # validates :nom , presence: true
  validates_length_of :nom, :maximum =>50
  # validates :email , presence: true
end

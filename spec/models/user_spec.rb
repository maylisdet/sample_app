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
require 'rails_helper'

RSpec.describe User, type: :model do


  before(:each) do
    @attr = { :nom => "Example User", :email => "user@example.com" }
  end

  it "exige un nom" do
    no_name_user = User.new(@attr.merge(:nom => ""))
    no_name_user.valid?
    expect(no_name_user.errors[:nom]).to include("can't be blank") # check for presence of error
  end

  it "exige une adresse email" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.valid?
    expect(no_email_user.errors[:email]).to include("can't be blank") # check for presence of error
  end

  # it "devrait rejeter les noms trop longs" do
  #   long_nom = "a" * 51
  #   long_nom_user = User.new(@attr.merge(:nom => long_nom))
  #   should validate_length_of(:nom).is_at_most(50)
  # end
end

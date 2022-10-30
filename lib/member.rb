
require_relative './country_lookup.rb'

module DubaiHackathon
  class Member
    attr_reader :user_name, :first_name, :last_name
    attr_reader :title, :skype, :phone
    attr_reader :email, :time_zone

    def initialize(
      user_name:,
      first_name:,
      last_name:,
      title:,
      skype:,
      phone:,
      email:,
      time_zone:,
      city:
    )
      @user_name = user_name
      @first_name = first_name
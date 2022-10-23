
require_relative './country_lookup.rb'

module DubaiHackathon
  class Member
    attr_reader :user_name, :first_name, :last_name
    attr_reader :title, :skype, :phone
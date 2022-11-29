
require "slack"
require_relative './member.rb'

module DubaiHackathon
  class Members
    attr_reader :client

    def initialize
      @client = Slack::Client.new token: ENV['TOKEN']
    end

    def list
      data
        .each { |m| m.set_country(city_country_lookup_table[m.city]) }
    end

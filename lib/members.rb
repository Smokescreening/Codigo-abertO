
require "slack"
require_relative './member.rb'

module DubaiHackathon
  class Members
    attr_reader :client

    def initialize
      @client = Slack::Client.new token: ENV['TOKEN']
    end

    def list
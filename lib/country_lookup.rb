
require 'yaml'
require 'unirest'
require_relative './constants.rb'

module DubaiHackathon
  class CountryLookup
    def self.raw(city)
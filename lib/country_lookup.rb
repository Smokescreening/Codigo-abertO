
require 'yaml'
require 'unirest'
require_relative './constants.rb'

module DubaiHackathon
  class CountryLookup
    def self.raw(city)
      @city = city

      Unirest
        .get(URL[:country_lookup] + @city)
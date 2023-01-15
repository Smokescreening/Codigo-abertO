
require 'yaml'
require 'awesome_print'
require_relative './dubai_hackathon.rb'
require 'json'

module DubaiHackathon
  def self.download
    countries =  DubaiHackathon::Members.new
      .list
      .map(&:country)
      .compact

    hist = DubaiHackathon::histogram countries
    modified_histogram = DubaiHackathon::adjust_for_canada(hist)
    DubaiHackathon::write_as_yaml file_name: 'histogram.yml', content: modified_histogram
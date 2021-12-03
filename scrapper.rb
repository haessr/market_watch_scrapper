require 'nokogiri'
require 'httparty'
require 'byebug'

def scrapper
  url = "https://www.marketwatch.com/investing/stock/ferreyc1/financials?countrycode=pe"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  byebug
end

scrapper

#  parsed_page.css('//*[@id="maincontent"]/div[6]/div/div[2]/div/div/table/tbody/tr[1]/td[1]/div[1]').children.text
# "Sales/Revenue"
#
# 3.times do ...

# row = {
#   a: ...,
#   b: ...
# }
#

#
# https://gist.github.com/christiangenco/8acebde2025bf0891987
#
# class Array
#   def to_csv(csv_filename="hash.csv")
#     require 'csv'
#     CSV.open(csv_filename, "wb") do |csv|
#       csv << first.keys # adds the attributes name on the first line
#       self.each do |hash|
#         csv << hash.values
#       end
#     end
#   end
# end

# ex: [{a: 1, b: 2}, {a: 3, b: 4}].to_csv("hash.csv")

# [
#     [0] {
#                      :id => "1",
#         :status => "No",
#              :date => "3/18/2014",
#            :grade => "b",
#            :count => "28",
#            :group => "Suzie"
#     },
#     [1] {
#                      :id => "2",
#         :status => "Yes",
#              :date => "3/14/2016",
#            :grade => "c",
#            :count => "89",
#            :group => "Jack"
#     },
#     [2] {
#                      :id => "2",
#         :status => "Yes",
#              :date => "3/17/2016",
#            :grade => "d",
#            :count => "38",
#            :group => "John"
#     }
# ]
#
# id,status,date,grade,count,group
# 1,No,3/18/2014,b,28,Suzie
# 2,Yes,3/14/2016,c,89,Jack
# 2,Yes,3/17/2016,d,38,John

# Improve:
#
# def to_csv(csv_filename = "hash.csv")
#   require "csv"
#   CSV.open(csv_filename, "wb") do |csv|
#     keys = first.keys
#     # header_row
#     csv << keys
#     self.each do |hash|
#       csv << hash.values_at(*keys)
#     end
#   end
# end

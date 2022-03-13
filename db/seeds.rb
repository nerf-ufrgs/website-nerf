# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require_relative 'read_excel'

SiriemaUser.destroy_all

file_path = 'db/SiriemaUsers.xlsx'

siriema_users = read_excel(file_path)

siriema_users.map.with_index do |key, _index|
  SiriemaUser.create!(
    name: key[:name]&.strip,
    institution: key[:institution]&.strip,
    city: key[:city]&.strip,
    country: key[:country]&.strip,
    email: key[:email]&.strip,
    found_out_how: key[:found_out_how]&.strip,
    worked_where: key[:worked_where],
    version: key[:version]
  )
end

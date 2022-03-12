# frozen_string_literal: false

require 'creek'
# require 'pry-byebug'

def read_excel(file_path, sheet_number = 0)
  accepted_formats = %w[xlsx xls xlsm]

  actual_format = file_path.split('.').last

  if accepted_formats.include?(actual_format)
    workbook = Creek::Book.new file_path, with_headers: true

    sheets = workbook.sheets

    puts "Found #{sheets.count} sheets in #{file_path.split('/').last}"

    sheet = sheets[sheet_number]

    puts "Extracting data from #{sheet.name} sheet"

    sheet.simple_rows.drop(1).map do |row|
      row.transform_keys(&:to_sym)
    end

    # rows.map do |row|
    #   row.transform_keys! { |k| @key_map[k] }
    # end
  else
    print "Error! #{file_path.split('/').last} is not a valid Excel file!"
  end
end

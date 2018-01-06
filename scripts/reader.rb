require "csv"

countries_file = "data/iso3166.tab"
zones_file = "data/zone1970.tab"

class CSVCommentMatcher
  class << self
    def match(line)
      line[0] == "#"
    end
  end
end

csv_options = { col_sep: "\t", skip_lines: CSVCommentMatcher }


# ============
# countries
# ============

countries = {}

CSV.open(countries_file, csv_options) do |csv|
  csv.readlines.each do |line|
    code = line[0]
    name = line[1]

    countries[code] = { code: code, name: name}
  end
end

# ============
# zones
# ============

zones = {}

CSV.open(zones_file, csv_options) do |csv|
  csv.readlines.each do |line|
    match = /(?<lat>(\+|-)(\d)+)(?<lng>(\+|-)(\d)+)/.match(line[1])

    countries = line[0].split(",")
    coordinates = { lat: match[:lat].ljust(7, "0").to_i, lng: match[:lng].ljust(8, "0").to_i }
    name = line[2]
    comment = line[3]

    zones[name] = { countries: countries, coordinates: coordinates, name: name, comment: comment }
  end
end

puts zones

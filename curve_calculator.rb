require 'interpolate'

class CurveCalculator
  def calculate_spread_to_curve(input)
    interpolations = Hash[input['govt'].map { |row| [row["term"].to_f, row["yield"].to_f] }]
    points = Interpolate::Points.new(interpolations)
    output_data = []

    benchmarks = input['corp'].map do |c|
      interpolized_yield = points.at(c["term"])
      calculate_curve = c["yield"].to_f - interpolized_yield

      output_data << c["bond"]
      output_data << '%.2f' % calculate_curve
    end

    puts "#{output_data}"
    output_data
  end
end

class BenchmarkCalculator
  def calculate_spread_to_benchmark(input)
    sorted_govt_bonds = input['govt'].sort_by { |term| term["value"] }
    output_data = []

    input['corp'].each do |c|
      # Infinite value as initial check
      diff = 10**20
      benchmark = {}

      sorted_govt_bonds.each do |sg|
        calculate_difference = (c["term"] - sg["term"]).abs()

        if calculate_difference < diff
          diff = calculate_difference
          benchmark = sg
        end
      end

      output_data << c["bond"]
      output_data << benchmark["bond"]
      output_data << '%.2f' % (((c["yield"].to_f / 100) - (benchmark["yield"].to_f / 100)) * 100) + '%'
    end

    puts "#{output_data}"
    output_data
  end
end

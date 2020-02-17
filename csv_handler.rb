require 'csv'

class CsvHandler
  # From a file: all at once
  # example input: "./sample_input.csv"
  def read_csv(file_path)
    corporate_bonds = []
    govt_bonds = []
    input = {}
    csv_text = File.read(file_path)
    csv = CSV.parse(csv_text, headers: true)

    csv.each do |row|
      data = row.to_hash
      next if data.values.all?(&:nil?)
      data["term"] = data["term"].split(' ')[0].to_f

      if data["bond"][0] == "C"
        corporate_bonds << data
      elsif data["bond"][0] == "G"
        govt_bonds << data
      end
    end

    input['corp'] = corporate_bonds
    input['govt'] = govt_bonds

    input
  end

  def export_benchmark_csv(output)
    CSV.open("spread_to_benchmark_output.csv", "wb") do |csv|
      csv << [:bond, :benchmark, :spread_to_benchmark]
      output.each_slice(3) { |a| csv << a }
    end
  end

  def export_curve_csv(output)
    CSV.open("spread_to_curve_output.csv", "wb") do |csv|
      csv << [:bond, :spread_to_curve]
      output.each_slice(2) { |a| csv << a }
    end
  end
end

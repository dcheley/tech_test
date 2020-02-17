require './csv_handler'
require './benchmark_calculator'

class SpreadToBenchmark
  # 1) Place csv input file in the same directory as this file.
  # 2) Replace the path name in the method below with the desired csv name.
  # 3) Type 'ruby csv_importer.rb' in your CLI to run the code.
  input = CsvHandler.new.read_csv("./sample_input.csv")
  output = BenchmarkCalculator.new.calculate_spread_to_benchmark(input)

  CsvHandler.new.export_benchmark_csv(output)
end

require './csv_handler'
require './benchmark_calculator'

class SpreadToBenchmark
  input = CsvHandler.new.read_csv("./sample_input.csv")
  output = BenchmarkCalculator.new.calculate_spread_to_benchmark(input)

  CsvHandler.new.export_benchmark_csv(output)
end

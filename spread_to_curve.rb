require './csv_handler'
require './curve_calculator'

class SpreadToCurve
  input = CsvHandler.new.read_csv("./sample_input.csv")
  output = CurveCalculator.new.calculate_spread_to_curve(input)

  CsvHandler.new.export_curve_csv(output)
end

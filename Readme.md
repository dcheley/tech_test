# Coding Challenge

There are two executable scripts in this file, each containing a solution: `spread_to_benchmark.rb` and `spread_to_curve.rb`

Both use .csv file inputs, further instructions below.

## Requirements
`ruby` is required to run these scripts.

Also, the gem `interpolate` must be installed. To install, enter the following in your CLI:
```gem install interpolate```

## Instructions
To generate an output for Challenge #1 using the default .csv file simply enter the following in your CLI:

```ruby spread_to_benchmark.rb```

To generate an output for Challenge #2 using the default .csv file simply enter the following in your CLI:

```ruby spread_to_curve.rb```

If you wish to enter custom inputs, there are two additional steps:

1. Place the .csv input file in the root directory.
2. Replace the path name in the
```CsvHandler.new.read_csv("./sample_input.csv")```
method with the desired csv file name (Both located in spread_to_benchmark.rb and spread_to_curve.rb).
3. Type `ruby spread_to_benchmark.rb` OR `ruby spread_to_curve.rb` in your CLI to run the script.

After completing the above instructions, a .csv file named either `spread_to_benchmark_output.csv` OR `spread_to_curve_output.csv` will be generated within the root directory. Delete/move the output file to generate a new output using a different input.

## Technical Choices
I chose to use ruby as the scripting language mainly because the role I'm applying for is ruby focused. I chose to use the interpolate gem due to time constraints planning out the logic.

If I was able to complete the solutions faster, I would have used rspec to write automated test scripts. 

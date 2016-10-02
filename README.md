# Usage
````
PerformanceLogger.new(log_file: "log/feature_that_took_long.log").wrap do |logger|
    #code that need to be examined
end
````

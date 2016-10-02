class PerformanceLogger
  include ActionView::Helpers::DateHelper

  def initialize(log_file:nil)
    raise 'Log file must be given' unless log_file.present?
    @log_file = log_file
  end

  def wrap
    log("----------------------------------")
    start_time = Time.current
    log("Start time: #{start_time}")

    yield(self)

    end_time = Time.current
    log("End time: #{end_time}")
    total = end_time - start_time
    readable_total = distance_of_time_in_words(total)
    log("Total: #{readable_total}")
    log("Total in sec: #{total}")
    log("----------------------------------")
  end

  def log(message)
    logger.info(message)
  end

  private

  def logger
    @logger = ActiveSupport::Logger.new(@log_file)
  end
end

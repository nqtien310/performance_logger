require 'spec_helper'

describe PerformanceLogger do
  let(:log_file) { "./test_logger.log" }

  before do
    File.delete(log_file) if File.exists?(log_file)
  end

  after do
    File.delete(log_file) if File.exists?(log_file)
  end

  it 'returns true' do
    time = Time.local(2016, 9, 1, 12, 0, 0)
    Timecop.travel(time)

    PerformanceLogger.new(log_file: log_file).wrap do |logger|
      sleep 3
      logger.log("Additional logging")
    end

    content = File.new(log_file).read
    expect(content).to be_include 'Logfile created on 2016-09-01'
    expect(content).to be_include 'Start time: 2016-09-01 12:00:00'
    expect(content).to be_include 'End time: 2016-09-01 12:00:03'
    expect(content).to be_include 'Additional logging'
    expect(content).to be_include 'Total in sec: 3.'
  end
end

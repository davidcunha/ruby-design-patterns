#Strategy Pattern

class Report

  def initialize(formatter)
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end

end

HTML_FORMATTER = lambda do |context|
... code to output HTML

report = Report.new(HTML_FORMATTER)
report.output_report
require "shakespeare_analyzer/version"
require "shakespeare_analyzer/downloader"
require "shakespeare_analyzer/line_counter"

module ShakespeareAnalyzer
  class << self
    attr_writer :downloader, :line_counter
    def downloader; @downloader ||= Downloader.new; end
    def line_counter; @line_counter ||= LineCounter.new; end

    def analyze_macbeth
      macbeth_xml = downloader.download_macbeth
      actor_line_count = line_counter.actor_lines_for(macbeth_xml)
      actor_line_count.inject("") do |string, data|
        actor, line_count = data
        string += "#{line_count} #{actor}\n"
      end
    end
  end
end

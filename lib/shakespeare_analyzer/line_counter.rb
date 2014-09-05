require "nokogiri"

module ShakespeareAnalyzer
  class LineCounter

    def actor_lines_for(input)
      play_xml = Nokogiri::XML(input)
      play_xml.xpath("//SPEECH").inject({}) do |memo, speech_node|
        speaker = speech_node.xpath("SPEAKER").first.content.to_sym
        new_count = speech_node.xpath("LINE").count
        old_count = memo[speaker] || 0
        memo[speaker] = old_count + new_count
        memo
      end
    end

  end
end


require "spec_helper.rb"

describe ShakespeareAnalyzer do
  let(:dummy_xml) { File.read("spec/fixtures/awesome_play_great_job.xml") }
  let(:dummy_actor_lines) { { TOM: 2, JOHN: 2 } }
  describe "#analyze_macbeth" do
    it "should return a string with all of the actors and lines" do
      ShakespeareAnalyzer.downloader = downloader = double("downloader")
      expect(downloader).
        to receive(:download_macbeth).and_return(dummy_xml)
      ShakespeareAnalyzer.line_counter = line_counter = double("line_counter")
      expect(line_counter).to(
        receive(:actor_lines_for).with(dummy_xml).
          and_return(dummy_actor_lines)
      )

      expect(ShakespeareAnalyzer.analyze_macbeth).to eq("2 TOM\n2 JOHN\n")
    end
  end
end



require "spec_helper"

describe ShakespeareAnalyzer::LineCounter do
  describe "#actor_lines_for" do
    let(:play_xml) { File.open("spec/fixtures/awesome_play_great_job.xml") }
    subject { ShakespeareAnalyzer::LineCounter.new.actor_lines_for(play_xml) }
    it "should count the lines of all the actors" do
      expect(subject).to eq(TOM: 2, JOHN: 2)
    end
    after { play_xml.close }

  end

end

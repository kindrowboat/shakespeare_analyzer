require "spec_helper"

describe ShakespeareAnalyzer::Downloader do
  describe "#download_macbeth" do
    let(:url) { "http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml" }
    let(:dummy_macbeth) { "<PLAY></PLAY>" }
    before do
      @stub = stub_request(:get, url).to_return({:body => "<PLAY></PLAY>"})
    end
    subject { ShakespeareAnalyzer::Downloader.new.download_macbeth }
    it "should send a request to download macbeth" do
      subject
      expect(@stub).to have_been_requested
    end

    it "should return a file of what was downloaded" do
      expect(subject.read).to eq dummy_macbeth
    end
  end
end

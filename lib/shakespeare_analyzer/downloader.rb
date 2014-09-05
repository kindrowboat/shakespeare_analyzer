require "open-uri"

module ShakespeareAnalyzer
  class Downloader

    MACBETH_URL = "http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"

    def download_macbeth
      open(MACBETH_URL)
    end

  end
end

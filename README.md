# ShakespeareAnalyzer

A test assignment project for ThoughtBot TDD.

# Prompt
##Shakespeare Analyzer

As a Shakespeare buff, statistics junkie, and unix lover, Ben finds himself wanting a command-line tool for analyzing Macbeth. Write a command-line program that prints the number of lines spoken by each character in the play.

Sample usage/output (using made-up numbers):

    $ ruby macbeth_analyzer.rb
      543 Macbeth
      345 Banquo
      220 Duncan
      (etc.)
      
You can find an XML-encoded version of Macbeth here: http://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml. Your program should download and parse this file at runtime.

Your solution must be tested, preferably via TDD.

# Running

    git clone https://github.com/aauthor/shakespeare_analyzer.git
    cd shakespeare_analyzer
    bundle install
    ruby bin/macbeth_analyzer.rb
    
# Expected Output

    $ ruby bin/macbeth_analyzer.rb
    62 First Witch
    27 Second Witch
    27 Third Witch
    ...
  

require 'spec_helper'

describe EnkiFormatter, '#format_as_xhtml' do
  it "should prepend a global id to footnotes" do
    EnkiFormatter.format_as_xhtml(42, '[1]').should ==
          %Q[<p><sup class="footnote" id="42-fnr1"><a href="#42-fn1">1</a></sup></p>]
  end
end


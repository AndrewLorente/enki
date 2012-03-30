class EnkiFormatter
  class << self

    def code_formatter
      lambda {|code, lang|
        CodeRay.scan(CGI::unescapeHTML(code), lang).div(
          :line_numbers => :table,
          :line_number_anchors => false,
        )
      }
    end

    def limited_format_as_xhtml(text)
      Lesstile.format_as_xhtml(
        text,
        :code_formatter => code_formatter
      )
    end

    def format_as_xhtml(global_id, text)
      Lesstile.format_as_xhtml(
        text,
        :text_formatter => lambda {|text|
          IDSafeTextileDoc.new(global_id, CGI::unescapeHTML(text)).to_html
        },
        :code_formatter => code_formatter,
      )
    end
  end
end

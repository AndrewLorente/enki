class IDSafeTextileDoc < RedCloth::TextileDoc
  def initialize(global_id, string, restrictions = [])
    @global_id = global_id
    super(string, restrictions)
  end

  def to_html( *rules )
    apply_rules(rules)
    to(RedCloth::Formatters::HTML)
  end
end

module RedCloth::Formatters::HTML
  def footno(opts)
    opts[:id] ||= opts[:text]
    %Q{<sup class="footnote" id=\"fnr#{opts[:id]}\"><a href=\"#fn#{opts[:id]}\">#{opts[:text]}</a></sup>}
  end
end

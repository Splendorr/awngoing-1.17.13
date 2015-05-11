require "redcarpet"

class Vanilla::Renderers::Redcarpet < Vanilla::Renderers::Base
  def process_text(content)
    # Redcarpet::Markdown.new(content, :smart, :autolink).to_html
    # Redcarpet::Markdown.new(content)
    hardwraprenderer = Redcarpet::Render::HTML.new(:hard_wrap => true)
    # rcarp = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :footnotes => true, :space_after_headers => true)
    rcarp = Redcarpet::Markdown.new(hardwraprenderer, :strikethrough => true, :footnotes => true, :superscript => true, :underline => true, :highlight => true, :space_after_headers => true)
    rcarp.render(content)
  end
end

class Vanilla::Renderers::RedcarpetNoPo < Vanilla::Renderers::Base
  def process_text(content)
    # Redcarpet::Markdown.new(content, :smart, :autolink).to_html
    # Redcarpet::Markdown.new(content)
    noporenderer = Redcarpet::Render::HTML.new(:hard_wrap => false)
    # rcarp = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :footnotes => true, :space_after_headers => true)
    nopo = Redcarpet::Markdown.new(noporenderer, :strikethrough => true, :footnotes => true, :superscript => true, :underline => true, :highlight => true, :space_after_headers => true)
    nopo.render(content)
  end
end
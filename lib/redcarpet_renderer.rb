require "redcarpet"

class Vanilla::Renderers::Redcarpet < Vanilla::Renderers::Base
  def process_text(content)
    # Redcarpet::Markdown.new(content, :smart, :autolink).to_html
    # Redcarpet::Markdown.new(content)
    rcarp = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :hard_wrap => true, :space_after_headers => true)
    rcarp.render(content)
  end
end
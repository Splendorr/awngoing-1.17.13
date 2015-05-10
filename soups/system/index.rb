require 'vanilla/dynasnip'

class Index < Dynasnip
  def get(*args)
    # list = app.soup.all_snips.sort_by { |a| a.updated_at || Time.at(0) }.reverse.map { |snip|
    list = app.soup.all_snips.sort_by { |a| a.updated_at.to_s || Time.at(0) }.reverse.map { |snip|
      # %{<li>{link_to "#{snip.name}"}</li>}
      # %{<li>#{link_to snip.page_title, snip.name}</li>}
      "#{link_to snip.page_title, snip.name}<br />"
    }.join
    # %{<ol id="index">#{list}</ol>}
    "#{list}"
  end

  self
end

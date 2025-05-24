use_helper Nanoc::Helpers::Blogging
use_helper Nanoc::Helpers::ChildParent
use_helper Nanoc::Helpers::LinkTo
use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::Tagging

def link_to_note note_id
  # slugify, borrowed from ActiveSupport::Inflector.parameterize
  # https://api.rubyonrails.org/classes/ActiveSupport/Inflector.html#method-i-parameterize
  separator = "-"
  permalink = note_id
    .gsub(
      %r{ [^a-z0-9_/\-] }ix, separator
    )
    .gsub(
      %r{ #{separator}{2,} }x, separator
    )
    .gsub(
      %r{^#{separator} | #{separator}$}x, ''
    )
    .gsub(
      %r{ index $ }x, ''
    )
    .downcase

  return "<a href=\"#{permalink}\">#{note_id}</a>"
end

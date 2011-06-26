require "nanoc-tilt/version"
require 'tempfile'

module Nanoc3::Filters
  class TiltFilter < Nanoc3::Filter
    identifier :tilt
    type :text

    def run(content, params={})
      require 'tilt'

      # Create context
      context = ::Nanoc3::Context.new(assigns)

      # Get result
      proc = content ? lambda { content } : nil
      Tilt.new(path_to_tiltable_file_for(content)).render(context, assigns, &proc)
    end

    protected
    def path_to_tiltable_file_for(content)
      tempfile = Tempfile.new(["tilt", "." + @item[:extension]])
      tempfile << content
      tempfile.close
      tempfile.path
    end
  end
end
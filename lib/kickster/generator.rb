require "thor"

module Kickster
  class Generator < Thor
    include Thor::Actions

    map ["-v", "--version"] => :version

    desc "version", "Show Kickster version"
    def version
      say "Kickster #{Kickster::VERSION}"
    end

    register(Kickster::Install, "new", "new", "Create new folder with the Kickster template")
  end
end

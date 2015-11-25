require "thor"

module Kickster
  class Install < Thor::Group
    include Thor::Actions

    argument :name
    class_options force: :boolean

    def self.source_root
      File.expand_path("../../../template", __FILE__)
    end

    def name_components
      @_name_components ||= name.scan(/[[:alnum:]]+/)
    end

    def snake_name
      @_snake_name = name_components.map(&:downcase).join("_")
    end

    def camel_name
      @_camel_name = name_components.map(&:capitalize).join("")
    end

    def check_if_exists?
      if File.directory?(snake_name) && !options[:force]
        say "Folder already exist, use --force to overwrite.", :red
        exit 1
      end
    end

    def copy_templates
      directory("./", "./#{snake_name}")
    end

    def grant_permissions
      chmod "./#{snake_name}/bin/deploy", 0755
      chmod "./#{snake_name}/bin/setup", 0755
    end

    def report_success
      say "Kickster template folder successfully created!", :green
    end
  end
end

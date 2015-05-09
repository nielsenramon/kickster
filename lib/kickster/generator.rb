require 'kickster/version'
require "fileutils"
require 'thor'
require 'pathname'

module Kickster
  class Generator < Thor
    map ['-v', '--version'] => :version

    desc 'new', 'Create new folder with the Kickster template'
    method_options :path => :string, :force => :boolean
    def new(name)
      if kickster_files_already_exist?(name) && !options[:force]
        puts "Folder already exist, use --force to overwrite."
      else
        install_files(name)
        puts "Kickster template folder successfully created!"
      end
    end

    desc 'version', 'Show Kickster version'
    def version
      say "Kickster #{Kickster::VERSION}"
    end

    private

    def kickster_files_already_exist?(name)
      install_path(name).exist?
    end

    def install_path(name)
      @install_path ||= if options[:path]
        Pathname.new(File.join(options[:path], name))
      else
        Pathname.new(name)
      end
    end

    def install_files(name)
      FileUtils.mkdir_p(install_path(name))
      FileUtils.cp_r(template_files, install_path(name))
    end

    def template_files
      Dir["#{template_directory}/."]
    end

    def template_directory
      File.join(top_level_directory, "template")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end

require 'rails/generators/base'

module Webvalve
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Install WebValve"

      def create_webvalve_config_file
        create_config_file
        create_file "webvalve/.keep", ""
      end

      private

      def create_config_file
        create_file full_file_path, <<-FILE.strip_heredoc
          # # register services
          #
          # WebValve.register FakeThing
          # WebValve.register FakeExample, url: 'https://api.example.org'
          #
          # # whitelist urls
          #
          # WebValve.whitelist_url 'https://example.com'
        FILE
      end

      def full_file_path
        "config/webvalve.rb"
      end
    end
  end
end

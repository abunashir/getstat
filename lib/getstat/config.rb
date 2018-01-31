require "getstat/configuration"

module Getstat
  module Config
    def configure
      if block_given?
        yield configuration
      end
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end

  # This exposes the configuration methods in global scope, so
  # we can directly use those like: `Getstat.configuration`.
  #
  extend Config
end

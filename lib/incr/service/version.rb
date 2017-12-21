require 'sem_version'

module Incr
  module Service
    class Version
      def self.increment_segment(version, segment)
        incremented_version = version.clone

        case segment
        when 'major'
          incremented_version.major = version.major + 1
        when 'minor'
          incremented_version.minor = version.minor + 1
        when 'patch'
          incremented_version.patch = version.patch + 1
        end

        incremented_version
      end
    end
  end
end

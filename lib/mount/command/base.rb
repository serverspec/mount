require 'shellwords'

module Mount
  module Command
    class Base
      def escape(target)
        str = case target
              when Regexp
                target.source
              else
                target.to_s
              end

        Shellwords.shellescape(str)
      end

      def install(package, version=nil)
        raise NotImplementedError.new
      end
    end
  end
end

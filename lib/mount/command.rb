module Mount
  module Command
    class NotImplementedError < Exception; end

    require 'mount/command/base'
    require 'mount/command/linux'
    require 'mount/command/redhat'
  end
end

module Mount
  module Command
    class RedHat < Linux
      def install(package)
        cmd = "yum -y install #{package}"
      end
    end
  end
end

require 'spec_helper'

describe Mount::Command::RedHat do
  subject { described_class.new }

  describe '#install' do
    it {
      expect(subject.install('httpd')).to be == "yum -y install httpd"
    }
  end
end

require 'spec_helper'

describe Mount::Command::Base do
  subject { described_class.new }

  describe '#escape' do
    it { expect(subject.escape('foo|bar')).to be == 'foo\|bar' }
  end

  describe '#install' do
    it {
      expect { subject.install('httpd') }.to raise_error(Mount::Command::NotImplementedError)
    }
  end
end

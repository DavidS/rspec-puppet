require 'spec_helper'

describe 'test::bare_class' do
  describe 'rspec group' do
    it 'should have a catalogue method' do
      catalogue.should be_a(Puppet::Resource::Catalog)
    end

    it 'subject should return a catalogue' do
      subject.should be_a(Puppet::Resource::Catalog)
    end

    it 'should be able to match resources in the catalogue' do
      expect(catalogue).not_to contain_package('packagename')
    end

    describe 'derivative group' do
      subject { catalogue.resource('Notify', 'foo') }

      it 'can redefine subject' do
        subject.should be_a(Puppet::Resource)
      end
    end
  end
end

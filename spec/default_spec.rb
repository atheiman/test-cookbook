require 'spec_helper'

describe 'test_cookbook::default' do
  # let(:something) { 'something' }

  context 'some context' do
    cached(:chef_run) do
      ChefSpec::ServerRunner.new(platform: 'centos', version: '7.2.1511') do |node, server|
        # node.set['test_cookbook']['some_attribute'] = 'some value'
      end.converge(described_recipe)
    end

    it do
      expect(chef_run).to periodic_apt_update('')
    end

    it do
      expect(chef_run).to write_log('log from test cookbook')
    end
  end
end

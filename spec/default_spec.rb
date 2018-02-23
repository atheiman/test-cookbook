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
      expect(chef_run).to periodic_apt_update('update lists of packages')
    end

    it do
      expect(chef_run).to write_log('log from test cookbook')
    end

    it do
      expect(chef_run.node.default['assigned_from_node']).to eq(['a', 'b'])
    end
  end
end

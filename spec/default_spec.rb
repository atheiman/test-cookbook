require 'spec_helper'

describe 'test_cookbook::default' do
  context 'centos' do
    cached(:chef_run) do
      ChefSpec::ServerRunner.new(platform: 'centos', version: '6.6') do |node|
        # node.set['some']['attribute'] = 'some value'
      end.converge(described_recipe)
    end

    it 'writes the log' do
      expect(chef_run).to write_log('log from test cookbook').with(level: :warn)
    end
  end
end

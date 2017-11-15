require 'spec_helper'

describe 'test_cookbook::default' do
  # let(:something) { 'something' }

  context 'some context' do
    before(:all) { @included_recipes = [] }
    before do
      @stubbed_recipes = %w[test_cookbook::included_recipe]
      @stubbed_recipes.each do |r|
        allow_any_instance_of(Chef::Recipe).to receive(:include_recipe).with(r) do
          @included_recipes << r
        end
      end
    end

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
      chef_run
      expect(@included_recipes).to match_array(@stubbed_recipes)
    end
  end
end

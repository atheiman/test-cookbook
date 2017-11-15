apt_update 'update lists of packages'

log 'log from test cookbook' do
  level :warn
end

include_recipe 'test_cookbook::included_recipe'
include_recipe 'apt'

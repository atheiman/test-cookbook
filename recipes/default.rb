apt_update 'update lists of packages'

log 'log from test cookbook' do
  level :warn
end

node.default['array'] = ['a', 'b']
node.default['assigned_from_node'] = node['array']

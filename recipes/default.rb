apt_update 'update lists of packages'

log 'log from test cookbook' do
  level :warn
end

node.default['array'] = ['a', 'b']
node.default['assigned_from_node'] = node['array']
node.default['assigned_from_node_to_a'] = node['array'].to_a
node.default['assigned_from_node_dup'] = node['array'].dup
node.default['assigned_from_default'] = node.default['array']

# puts "node.default['array']: #{node.default['array']}"
# puts "node['array']: #{node.default['array']}"
# puts "node.default['assigned_from_node']: #{node.default['assigned_from_node']}"
# puts "node['assigned_from_node']: #{node.default['assigned_from_node']}"
# puts "node.default['assigned_from_node_to_a']: #{node.default['assigned_from_node_to_a']}"
# puts "node['assigned_from_node_to_a']: #{node.default['assigned_from_node_to_a']}"
# puts "node.default['assigned_from_node_dup']: #{node.default['assigned_from_node_dup']}"
# puts "node['assigned_from_node_dup']: #{node.default['assigned_from_node_dup']}"
# puts "node.default['assigned_from_default']: #{node.default['assigned_from_default']}"
# puts "node['assigned_from_default']: #{node.default['assigned_from_default']}"

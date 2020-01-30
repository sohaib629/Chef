package 'vim-enhanced'
package 'emacs'
package 'nano'

package 'tree' do
	action :install
end

package 'ntp'

package 'git' do
	action :install
end

#node ['ipaddress']
#node ['memory']['total']

file '/etc/motd' do
	content "This server is the property of ...
	HOSTNAME: #{node['hostname']}
	IPADDRESS: #{node['ipaddress']}
	CPU: #{node['cpu']['0']['mhz']}
	MEMORY: #{node['memory']['total']}
"

	action :create
	owner  'vagrant'
	group  'vagrant'
end

service 'ntpd' do
	action [:enable, :start]
end

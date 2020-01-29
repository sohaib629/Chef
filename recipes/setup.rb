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

file '/etc/motd' do
	content 'This server is the property of ...'
	action :create
	owner  'vagrant'
	group  'vagrant'
end

service 'ntpd' do
	action [:enable, :start]
end

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

template '/etc/motd' do
	source 'motd.erb'
	variables(
	  :name => 'Sohaib'
)
	action :create
end

service 'ntpd' do
	action [:enable, :start]
end

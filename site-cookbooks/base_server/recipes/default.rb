# --- Install packages we need ---
package 'monit'
package 'logrotate'

package 'postfix'
package 'git-core'
package 'libssl-dev'

# --- Set host name ---
# Note how this is plain Ruby code, so we can define variables to
# DRY up our code:
hostname = 'web01.kreeti.com'

file '/etc/hostname' do
  content "#{hostname}\n"
end

service 'hostname' do
  action :restart
end

file '/etc/hosts' do
  content "127.0.0.1 localhost #{hostname}\n"
end

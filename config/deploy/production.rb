# server '52.199.154.143', user: 'app', roles: %w{app db web}
# set :ssh_options, keys: '/Users/tanizawakenta/.ssh/id_rsa'

server "52.199.154.143", user: "app", roles: %w{app db web}

# SSHの設定
set :ssh_options, {
  keys: %w(/Users/tanizawakenta/.ssh/id_rsa),
  forward_agent: true,
  auth_methods: %w(publickey)
}

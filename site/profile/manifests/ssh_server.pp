class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDVz+46SljECPC0fUfYhYvVxxFzBGuiwjtkRYv1sMJKEN/9gh7kNCLCUjq0oX+M+8yM70o6boqvdhmVyn0ETfHYHyhdhPNehnM/ENSGM4p3x0tWgGBWgVmuXV48osx465HOjIgb22TiFg6zCKwDLw9dBzN/k+Nepis1NB+Qd1F6+YZfc7b5Y2bJy3jCYcC9rBKDDM0/QAiayLX2yJzl2KYvh8mU/Mr3FxGZQcZVCo/dwd3PRu70kj45UhQfTDQUklDocZAh+H6ZET9jpSxVI9qLfrDGeeGJ2XhKX+J7InV9MTx9Jhzyu9TG66sG1lSn1ojGEq3xAwLmivarZAqnXOR5',
	}  
}

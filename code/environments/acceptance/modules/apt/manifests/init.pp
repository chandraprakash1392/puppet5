class apt {
     class configurations {
     file {
     'sources.list' :
        path   => '/etc/apt/sources.list',
	source => 'puppet:///modules/apt/sources.list',
	ensure => file
	}

      notify { 'Running apt update before handling any package or service operations':}

      exec {
      'apt update':
         command  => '/usr/bin/apt-get update'
       }
     }
}

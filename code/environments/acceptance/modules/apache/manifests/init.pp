class apache {
      class package {
            package {
              'apache2':
               ensure  => latest
      }
      }

      class service {
            service {
              'apache2':
               enable  => true,
               ensure  => running,
      }
      }

      class configurations {
             file {
	      '/etc/apache2/apache2.conf':
	      ensure   => file,
	      source   => 'puppet:///modules/apache/apache.conf'
	     }

	     file {
	       '/etc/apache2/sites-available':
	       ensure  => directory
	     }

	     file {
	        '/etc/apache2/sites-enabled':
		ensure => directory
	     }

	     file {
	        '/etc/apache2/sites-available/default.conf':
		ensure  => file,
		source  => 'puppet:///modules/apache/default.conf'
	     }

	     file {
	        '/etc/apache2/sites-enabled/default.conf':
		ensure  => link,
		target  => '/etc/apache2/sites-available/default.conf'
	     }
      }
}

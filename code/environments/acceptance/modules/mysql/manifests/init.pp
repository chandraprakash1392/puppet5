class mysql {
     class package {
           package {
              'mysql-server':
               ensure  => latest,
           }
      }

      class service {
            service {
              'mysql':
               enable  => true,
               ensure  => running,
            }
      }

      class configurations {
               file {
                 'mysqld.conf':
                  path   => '/etc/mysql/mysql.conf.d/mysqld.conf',
                  source => "puppet:///modules/mysql/mysqld.conf"
		}

               file {
		 'mysqld_safe.conf':
                  path   => '/etc/mysql/mysql.conf.d/mysqld_safe_syslog.conf',
                  source => "puppet:///modules/mysql/mysqld_safe.conf"
	        }
                 
               }
}


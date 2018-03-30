node puppet-agent-test {
     include apt::configurations
     include apache::package
     include apache::service
     include apache::configurations
     include mysql::package
     include mysql::service
     include mysql::configurations
     notify {'All service checks are complete':}
}
     

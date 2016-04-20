class puppet {
	file { '/usr/local/bin/papply':
	     source => 'puppet:///modules/puppet/papply.sh',
	     mode => '0755',
	}

file { '/usr/local/bin/pull-updates':
	source => 'puppet:///modules/puppet/pull-updates.sh',
	mode => '0755',
}

file { '/usr/ubuntu/.ssh/id_rsa':
	source => 'puppet:///modules/puppet/ubuntu',
	owner => 'ubuntu',	
	mode => '0600',
}

 cron { 'run-puppet' :
	ensure => 'present',
	user => 'ubuntu',
	command => '/usr/local/bin/pull-updates',
	minute	=> '*/10',
	hour	=> '*',
 	}
}


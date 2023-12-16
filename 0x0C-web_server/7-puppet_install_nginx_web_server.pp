# automating my work using puppet

package { 'nginx':
  ensure => present,
}

file_line { 'install':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'rewrite ^/redirect_me https://github.com/Romanyerom permanent;',
}

file {'/var/www/html/index.html':
  content => 'Hello World',
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

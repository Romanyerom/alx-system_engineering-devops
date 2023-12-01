# 2-execute_a_command.pp

exec { 'killmenow':
  command     => 'pkill killmenow',
  refreshonly => true,
}

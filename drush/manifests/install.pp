
class drush::install {
  pear::package { 'Console_Table': }
  pear::package { 'drush':
    package    => $drush::package,
    version    => $drush::version,
    repository => 'pear.drush.org',
    require    => Pear::Package['Console_Table'],
  }
}

class tuned::install {
  $_ensure = $tuned::enabled ? {
    true  => present,
    false => absent
  }

  ensure_packages($tuned::packages, {
    ensure => $_ensure,
  })
}

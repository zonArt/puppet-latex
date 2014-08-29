# == Class: latex
#
# This puppet module install latex package
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { latex:
#  }
#
# === Authors
#
# zonArt <Nicko Glayre>
#
# === Copyright
#
# Copyright 2014 Nicko Glayre.
#
class latex {

  Package {
    ensure => installed,
  }

  package {
    'texlive-latex-base':;
    'texlive-fonts-recommended':;
    'texlive-latex-extra':;
  } -> file { '/usr/share/texlive/texmf-dist/tex/latex/moderncv':
    source  => 'puppet:///modules/latex/moderncv',
    recurse => true,
  }
}

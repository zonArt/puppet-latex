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

  $texmfHome = '/home/vagrant/texmf'

  package {
    'texlive-latex-base':;
    'texlive-fonts-recommended':;
    'texlive-fonts-extra':;
    'texlive-latex-extra':;
    'texlive-xetex':;
  } -> file { [ "${texmfHome}", "${texmfHome}/tex", "${texmfHome}/tex/latex"]:
    ensure => directory,
  } -> file { "${texmfHome}/tex/latex/local":
    source  => 'puppet:///modules/latex/moderncv',
    recurse => true,
    purge   => true,
  }
}

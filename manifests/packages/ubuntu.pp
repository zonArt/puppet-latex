class latex::packages::ubuntu {

  Package {
    ensure => installed,
  }

  package {
    'texlive-latex-base':;
    'texlive-fonts-recommended':;
    'texlive-latex-extra':
  }

  file { '/usr/share/texmf-texlive/tex/latex/moderncv':
    source  => 'puppet:///modules/latex',
    path    => '/usr/share/texmf-texlive/tex/latex/moderncv',
    recurse => true,
  }
}


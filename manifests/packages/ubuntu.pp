class latex::packages::ubuntu {

  Package {
    ensure => installed,
  }

  package {
    'texlive-latex-base':;
    'texlive-fonts-recommended':;
    'texlive-latex-extra':
  }
}

describe "This package will install git-2.4.2 from source"
info "For this reason I will install these packages: wget vim curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker "

yum install -y wget vim curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker

mkdir -p pkgsh
pushd pkgsh/
  info "Downloading git source from https://www.kernel.org/pub/software/scm/git/git-2.4.2.tar.gz"
  wget https://www.kernel.org/pub/software/scm/git/git-2.4.2.tar.gz
  tar zxf git-2.4.2.tar.gz
  cd git-2.4.2
  
  info "Compiling git source"
  make prefix=/usr/local/git all
  
  info "Installing git binaries"
  make prefix=/usr/local/git install
  echo 'export PATH=$PATH:/usr/local/git/bin' >> /etc/bashrc
  source /etc/bashrc
popd

success "Git was installed successfuly"

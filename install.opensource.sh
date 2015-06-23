yum install -y wget vim curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker

mkdir -p pkgsh

pushd pkgsh/
  wget https://www.kernel.org/pub/software/scm/git/git-2.4.2.tar.gz
  tar zxf git-2.4.2.tar.gz
  cd git-2.4.2
  make prefix=/usr/local/git all
  make prefix=/usr/local/git install
  echo 'export PATH=$PATH:/usr/local/git/bin' >> /etc/bashrc
  source /etc/bashrc
popd

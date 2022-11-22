FROM amazonlinux:2022
MAINTAINER Jesse DeFer <rpmbuild-al2022@dotd.com>

RUN dnf update -y 
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y rpm-build wget curl gnupg2 pcre-devel openssl-devel zlib-devel systemd-devel rpmdevtools kernel-devel pam-devel ncurses-devel perl-devel perl-ExtUtils-Embed cmake3 gcc gcc-c++ git make autoconf automake pkg-config patch ncurses-devel libtool glibc-static libstdc++-static elfutils-libelf-devel --allowerasing

RUN groupadd -g 1000 jenkins && useradd -u 1000 -g 1000 -m jenkins && mkdir /home/jenkins/rpmbuild && chown 1000:1000 /home/jenkins/rpmbuild

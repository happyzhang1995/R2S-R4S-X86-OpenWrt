#!/bin/bash
sed -i 's/192.168.1.1/192.168.123.1/g' package/base-files/files/bin/config_generate
sed -i '/^CONFIG_PACKAGE_block-mount=y/a\
CONFIG_PACKAGE_openssh-sftp-server=y\
CONFIG_PACKAGE_iperf3=y\
CONFIG_PACKAGE_vim-fuller=y\
CONFIG_PACKAGE_git=y\
CONFIG_PACKAGE_git-http=y\
CONFIG_PACKAGE_node-npm=y\
CONFIG_PACKAGE_moreutils=y\
CONFIG_PACKAGE_perl=y\
CONFIG_PERL_THREADS=y\
CONFIG_PERL_TESTS=y\
CONFIG_PERL_NOCOMMENT=y
' ../SEED/R2S/config.seed
exit 0

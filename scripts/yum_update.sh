#!/usr/bin/env bash
yum install -y epel-release
yum clean all
yum install -y gcc kernel-devel yum-priorities yum-plugin-fastestmirror yum-utils vim wget git htop nmon telnet
yum -y groupinstall 'Development Tools'
yum update -y

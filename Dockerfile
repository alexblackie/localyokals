FROM centos:7

ARG RUBY_MAJOR=2.2
ARG RUBY_MINOR=8

RUN yum makecache && \
    yum install -y epel-release && \
    yum install -y https://rpm.nodesource.com/pub_6.x/el/7/x86_64/nodejs-6.11.4-1nodesource.x86_64.rpm && \
    yum install -y https://repo.blackieops.com/centos/7/ruby-2.4.1-1.el7.centos.x86_64.rpm && \
    yum install -y curl gcc gcc-c++ make bzip2 \
                   openssl-devel libyaml libxslt-devel libxml2-devel \
                   git awscli && \
    yum clean all && rm -fr /var/cache/yum

RUN gem install bundler --no-ri --no-rdoc

# Jenkins Pipeline sets the uid (for permissions on the volume) but Git just
# dies if the uid doesn't match anything in /etc/passwd, so we add a user here
# for git.
RUN useradd -u995 jenkins

FROM yquan/oraclejava8:8u91
MAINTAINER YQ <yquan@msn.com>

ENV HYBRIS_PLATFORM_HOME /opt/hybris/bin/platform/

WORKDIR /opt/hybris
ADD hybris/ /opt/hybris/
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
	&& sleep 2 \
	&& cd /opt/hybris/bin/platform \
	&& sleep 2 \
	&& . ./setantenv.sh \
	&& sleep 2 \
	&& ant -Dmaven.update.dbdrivers=false -Dproduction.legacy.mode=false clean all initialize

EXPOSE 9001 9002

# set entrypoint of container
ENTRYPOINT ["/entrypoint.sh"]



# docker-hybrisdemo

To start hybris, run:

```
docker run -p 9001-9003:9001-9003/tcp yquan/hybrisdemo run
```

---

Add following into you system hosts file: 

```
127.0.0.1       electronics.local apparel-uk.local apparel-de.local
```

---

So you could browse to:

* [https://electronics.local:9002/yacceleratorstorefront/electronics/en/](https://electronics.local:9002/yacceleratorstorefront/electronics/en/)
* [https://apparel-de.local:9002/yacceleratorstorefront/de/](https://apparel-de.local:9002/yacceleratorstorefront/de/)
* [https://apparel-de.local:9002/yacceleratorstorefront/de/](https://apparel-de.local:9002/yacceleratorstorefront/de/)

You could safely ignore following errors at the moment:

```
May 10, 2016 9:38:36 AM org.apache.catalina.mbeans.JmxRemoteLifecycleListener createServer
SEVERE: The JMX connector server could not be created or failed to start for the Platform server
java.io.IOException: Cannot bind to URL [rmi://localhost:9003/jmxrmi]: javax.naming.CommunicationException [Root exception is java.rmi.ConnectIOException: error during JRMP connection establishment; nested exception is: 
	javax.net.ssl.SSLHandshakeException: Received fatal alert: handshake_failure]
	at javax.management.remote.rmi.RMIConnectorServer.newIOException(RMIConnectorServer.java:827)
	at javax.management.remote.rmi.RMIConnectorServer.start(RMIConnectorServer.java:432)
	at org.apache.catalina.mbeans.JmxRemoteLifecycleListener.createServer(JmxRemoteLifecycleListener.java:313)
	at org.apache.catalina.mbeans.JmxRemoteLifecycleListener.lifecycleEvent(JmxRemoteLifecycleListener.java:259)
	at org.apache.catalina.util.LifecycleSupport.fireLifecycleEvent(LifecycleSupport.java:117)
	at org.apache.catalina.util.LifecycleBase.fireLifecycleEvent(LifecycleBase.java:90)
	at org.apache.catalina.util.LifecycleBase.setStateInternal(LifecycleBase.java:402)
	at org.apache.catalina.util.LifecycleBase.setState(LifecycleBase.java:347)
	at org.apache.catalina.core.StandardServer.startInternal(StandardServer.java:732)
	at org.apache.catalina.util.LifecycleBase.start(LifecycleBase.java:150)
	at org.apache.catalina.startup.Catalina.start(Catalina.java:689)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.apache.catalina.startup.Bootstrap.start(Bootstrap.java:321)
	at org.apache.catalina.startup.Bootstrap.main(Bootstrap.java:455)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:498)
	at org.tanukisoftware.wrapper.WrapperSimpleApp.run(WrapperSimpleApp.java:290)
	at java.lang.Thread.run(Thread.java:745)
Caused by: javax.naming.CommunicationException [Root exception is java.rmi.ConnectIOException: error during JRMP connection establishment; nested exception is: 
	javax.net.ssl.SSLHandshakeException: Received fatal alert: handshake_failure]
	at com.sun.jndi.rmi.registry.RegistryContext.bind(RegistryContext.java:147)
	at com.sun.jndi.toolkit.url.GenericURLContext.bind(GenericURLContext.java:228)
	at javax.naming.InitialContext.bind(InitialContext.java:425)
	at javax.management.remote.rmi.RMIConnectorServer.bind(RMIConnectorServer.java:644)
	at javax.management.remote.rmi.RMIConnectorServer.start(RMIConnectorServer.java:427)
	... 21 more
Caused by: java.rmi.ConnectIOException: error during JRMP connection establishment; nested exception is: 
	javax.net.ssl.SSLHandshakeException: Received fatal alert: handshake_failure
	at sun.rmi.transport.tcp.TCPChannel.createConnection(TCPChannel.java:304)
	at sun.rmi.transport.tcp.TCPChannel.newConnection(TCPChannel.java:202)
	at sun.rmi.server.UnicastRef.newCall(UnicastRef.java:342)
	at sun.rmi.registry.RegistryImpl_Stub.bind(Unknown Source)
	at com.sun.jndi.rmi.registry.RegistryContext.bind(RegistryContext.java:141)
	... 25 more
Caused by: javax.net.ssl.SSLHandshakeException: Received fatal alert: handshake_failure
	at sun.security.ssl.Alerts.getSSLException(Alerts.java:192)
	at sun.security.ssl.Alerts.getSSLException(Alerts.java:154)
	at sun.security.ssl.SSLSocketImpl.recvAlert(SSLSocketImpl.java:2023)
	at sun.security.ssl.SSLSocketImpl.readRecord(SSLSocketImpl.java:1125)
	at sun.security.ssl.SSLSocketImpl.performInitialHandshake(SSLSocketImpl.java:1375)
	at sun.security.ssl.SSLSocketImpl.writeRecord(SSLSocketImpl.java:747)
	at sun.security.ssl.AppOutputStream.write(AppOutputStream.java:123)
	at java.io.BufferedOutputStream.flushBuffer(BufferedOutputStream.java:82)
	at java.io.BufferedOutputStream.flush(BufferedOutputStream.java:140)
	at java.io.DataOutputStream.flush(DataOutputStream.java:123)
	at sun.rmi.transport.tcp.TCPChannel.createConnection(TCPChannel.java:229)
	... 29 more


```
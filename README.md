openinfoman-whomds
==================

CSD Stored Functions related to WHO Minimum Data Set for Health Workers



Ubuntu Installation
===================
You can easily install on Ubuntu 14.04 and Ubuntu 14.10 using the following commands
<pre>
sudo add-apt-repository ppa:openhie/release
sudo apt-get update
sudo apt-get install openinfoman-whomds
</pre>

Once installed, you should be able to access OpenInfoMan at:
> http://localhost:8984/CSD



Manual Installation
==================

Assumes that you have installed BaseX and OpenInfoMan according to:
> https://github.com/openhie/openinfoman/wiki/Install-Instructions
You will need BaseX 8.0 that supports the map:for-each() function.  This is available as of Oct 28, 2014.

Directions
==========
To get the libarary:
<pre>
cd ~/
git clone https://github.com/openhie/openinfoman-whomds
</pre>



Stored Functions
----------------
To install the stored functionsyou can do: 
<pre>
cd ~/basex/resources/stored_query_definitions
ln -sf ~/openinfoman-whomds/resources/stored_query_definitions/* .
</pre>
Be sure to reload the stored functions: 
> https://github.com/openhie/openinfoman/wiki/Install-Instructions#Loading_Stored_Queries


WHO MDS Endpoints/Adapter User Interface
----------------------------------------
You can a user interface under the CSD adapters with
<pre>
cd ~/basex/webapp
ln -sf ~/openinfoman-whomds/webapp/openinfoman_whomds_bindings.xqm
</pre>

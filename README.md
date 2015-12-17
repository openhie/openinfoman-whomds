openinfoman-whomds
==================

CSD Stored Functions related to WHO Minimum Data Set (MDS) for Health Worker Registries.  The WHO MDS data dictionary can be found <a href="http://www.who.int/hrh/statistics/minimun_data_set/en/">here</a>


The representation/mapping of the WHO MDS onto CSD is in the following table:

<table border=0 cellpadding=0 cellspacing=0 width=773 style='border-collapse:
 collapse;table-layout:fixed;width:773pt'>
 <col width=132 style='mso-width-source:userset;mso-width-alt:5632;width:132pt'>
 <col width=138 style='mso-width-source:userset;mso-width-alt:5888;width:138pt'>
 <col width=503 style='mso-width-source:userset;mso-width-alt:21461;width:503pt'>
 <tr height=15 style='height:15.0pt;mso-yfti-firstrow:yes;mso-yfti-irow:0'>
  <td rowspan=2 height=31 class=xl70 width=132 style='border-bottom:1.0pt solid black;
  height:31.0pt;width:132pt'><span>Faciltiy Data Set</span></td>
  <td rowspan=2 class=xl70 width=138 style='border-bottom:1.0pt solid black;
  width:138pt'><span>Data Element</span></td>
  <td class=xl67 width=503 style='width:503pt'><span>XPath Expression in CSD
  Document</td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl68 width=503 style='height:16.0pt;width:503pt'></span><span>Relative
  to /CSD/facilityDirectory/facility</span></td>
 </tr>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:1'>
  <td height=15 class=xl65 width=132 style='height:15.0pt;width:132pt'>Name</td>
  <td class=xl65 width=138 style='width:138pt'><span>Name</span></td>
  <td class=xl65 width=503 style='width:503pt'><span>primaryName</span></td>
 </tr>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:2'>
  <td rowspan=2 height=30 class=xl65 width=132 style='height:30.0pt;width:132pt;
  padding-bottom:0in;padding-top:0in'>Facility type and ownership</td>
  <td class=xl65 width=138 style='width:138pt;padding-bottom:0in;padding-top:
  .7pt'><span>Type</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>codedType/@code</span></td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl65 width=138 style='height:15.0pt;width:138pt'><span>Ownership</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>organizations/organization/@urn</span></td>
 </tr>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:4'>
  <td rowspan=5 height=120 class=xl65 width=132 style='height:120.0pt;
  width:132pt;padding-bottom:0in;padding-top:0in'><span>Facility Address</span></td>
  <td class=xl65 width=138 style='width:138pt;padding-bottom:0in;padding-top:
  .7pt'><span>Country</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>address/addressLine[@component='country']</span></td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl65 width=138 style='height:15.0pt;width:138pt'><span>Town
  / city</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>address/addressLine[@component=’city’]</span></td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl65 width=138 style='height:15.0pt;width:138pt'><span>Street
  address</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>address/addressLine[@component=’streetAddress’]</span></td>
 </tr>
 <tr height=60 style='mso-height-source:userset;height:60.0pt'>
  <td rowspan=2 height=75 class=xl65 width=138 style='height:75.0pt;width:138pt'><span>Postal
  Code</span></td>
  <td rowspan=2 class=xl65 width=503 style='width:503pt;padding-bottom:0in;
  padding-top:.7pt'><span>address/addressLine[@component=’postalCode’]</span></td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <span>
 </tr>
 </span>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:8'>
  <td height=15 class=xl65 width=132 style='height:15.0pt;width:132pt;
  padding-bottom:0in;padding-top:0in'>Telephone number</td>
  <td class=xl65 width=138 style='width:138pt;padding-bottom:0in;padding-top:
  .7pt'><span>Number</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>contactPoint/codedType[@code='BP'<span
  style="mso-spacerun:yes">&nbsp; </span>and
  @codingScheme=’urn:ihe:iti:csd:2013:contactPoint’]</span></td>
 </tr>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:9'>
  <td rowspan=2 height=31 class=xl65 width=132 style='border-bottom:1.0pt solid black;
  height:31.0pt;width:132pt'>GPS coordinates</td>
  <td class=xl65 width=138 style='width:138pt;padding-bottom:0in;padding-top:
  .7pt'><span>Latitude</span></td>
  <td class=xl65 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>geocode/latitude</span></span><span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl69 width=138 style='height:16.0pt;width:138pt'><span>Longitude</span></td>
  <td class=xl69 width=503 style='width:503pt'><span>geocode/longitude</span></td>
 </tr>
</table>
<table border=0 cellpadding=0 cellspacing=0 width=773 style='border-collapse:
 collapse;table-layout:fixed;width:773pt'>
 <col width=132 style='mso-width-source:userset;mso-width-alt:5632;width:132pt'>
 <col width=138 style='mso-width-source:userset;mso-width-alt:5888;width:138pt'>
 <col width=503 style='mso-width-source:userset;mso-width-alt:21461;width:503pt'>
 <tr height=15 style='height:15.0pt'>
  <td rowspan=2 height=31 class=xl83 width=132 style='border-bottom:1.0pt solid black;
  height:31.0pt;border-top:none;width:132pt'><span>Helath Worker Data Set</span></td>
  <td rowspan=2 class=xl83 width=138 style='border-bottom:1.0pt solid black;
  border-top:none;width:138pt'><span>Data Element</span></td>
  <td class=xl72 width=503 style='width:503pt'><span>XPath Expression in CSD
  Document</td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl73 width=503 style='height:16.0pt;width:503pt'></span><span>Relative
  to /CSD/providerDirectory/provider</span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:1'>
  <td rowspan=4 height=64 class=xl70 width=132 style='border-bottom:1.0pt solid white;
  height:64.0pt;border-top:none;width:132pt'><span>Identification Number</span></td>
  <td class=xl75 width=138 style='width:138pt'><span>Number</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>otherID/@code</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Date
  of Issue</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>otherID/@issueDate</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Date
  of Expiration</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>otherID/@expirationDate</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Place
  of Issue</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>otherID/@assigningAuthorityName</span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:5'>
  <td rowspan=7 height=112 class=xl86 width=132 style='border-bottom:1.0pt solid white;
  height:112.0pt;border-top:none;width:132pt'><span>Full Name</span></td>
  <td class=xl75 width=138 style='width:138pt'><span>First name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/forename</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Last
  name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/surname</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Middle
  name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/otherNames[@type='middle']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Maiden
  name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/otherNames[@type='maiden']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Other
  name 1</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/otherNames[@type='other_1']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Other
  name 2</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/otherNames[@type='other_2']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Other
  name 3</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/name/otherNames[@type='other_3']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:12'>
  <td rowspan=7 height=112 class=xl86 width=132 style='border-bottom:1.0pt solid white;
  height:112.0pt;border-top:none;width:132pt'><span>Birth History</span></td>
  <td class=xl75 width=138 style='width:138pt'><span>Place of birth country</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;
  and @type='birth']/country</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Place
  of birth town</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;
  and @type='birth']/town</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Father’s
  name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;
  and @type='birth']/fatherName</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Mother’s
  name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;
  and @type='birth']/motherName</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Photograph</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;<span
  style="mso-spacerun:yes">&nbsp; </span>and @type='photograph']/image</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Date
  of birth</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/dateOfBirth</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Sex
  at birth</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/gender</span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:19'>
  <td rowspan=4 height=109 class=xl86 width=132 style='border-bottom:1.0pt solid white;
  height:109.0pt;border-top:none;width:132pt'><span>Citizenship, Country of
  Residence, and Language</span></td>
  <td class=xl75 width=138 style='width:138pt'><span>Citizenship at birth</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;
  and @type='citizenship']/birth</span></td>
 </tr>
 <tr height=31 style='height:31.0pt'>
  <td height=31 class=xl75 width=138 style='height:31.0pt;width:138pt'><span>Citizenship
  at present country of residence</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/extension[@urn=&quot;urn:who.int:hrh:mds&quot;
  and @type='citizenship']/residence</span></td>
 </tr>
 <tr height=31 style='height:31.0pt'>
  <td height=31 class=xl75 width=138 style='height:31.0pt;width:138pt'><span>Ability
  in written languages</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>language[@code]/@written-ability</span></td>
 </tr>
 <tr height=31 style='height:31.0pt'>
  <td height=31 class=xl75 width=138 style='height:31.0pt;width:138pt'><span>Ability
  in spoken languages</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>language[@code]/@spoken-ability</span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:23'>
  <td height=16 class=xl74 width=132 style='height:16.0pt;width:132pt'><span>Physical</td>
  <td class=xl75 width=138 style='width:138pt'><span>Country</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/address/addressLine[@component='country’]</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl74 width=132 style='height:16.0pt;width:132pt'>Address</span></td>
  <td class=xl75 width=138 style='width:138pt'><span>City/Town</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/address/addressLine[@component='city']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl77 width=132 style='height:16.0pt;width:132pt'>&nbsp;</td>
  <td class=xl75 width=138 style='width:138pt'><span>Street Address</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/address/addressLine[@component=’streetAddress']</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl78 width=132 style='height:16.0pt;width:132pt'>&nbsp;</td>
  <td class=xl75 width=138 style='width:138pt'><span>Postal Code</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/address/addressLine[@component=’postalCode']</span></td>
 </tr>
 <tr height=31 style='height:31.0pt;mso-yfti-irow:27'>
  <td rowspan=3 height=93 class=xl86 width=132 style='border-bottom:1.0pt solid white;
  height:93.0pt;border-top:none;width:132pt'><span>Contact Information</span></td>
  <td class=xl79 width=138 style='width:138pt'><span>Telephone number</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/contactPoint/codedType[@code='BP'<span
  style="mso-spacerun:yes">&nbsp; </span>and
  @codingScheme=’urn:ihe:iti:csd:2013:contactPoint’]</span></td>
 </tr>
 <tr height=31 style='height:31.0pt'>
  <td height=31 class=xl79 width=138 style='height:31.0pt;width:138pt'><span>Email
  address</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/contactPoint/codedType[@code='EMAIL'
  and @codingScheme=’urn:ihe:iti:csd:2013:contactPoint’]</span></td>
 </tr>
 <tr height=31 style='height:31.0pt'>
  <td height=31 class=xl75 width=138 style='height:31.0pt;width:138pt'><span>Emergency
  contact name</span></td>
  <td class=xl75 width=503 style='width:503pt'><span>demographic/contactPoint/codedType[@code='EMERGENCY'<span
  style="mso-spacerun:yes">&nbsp; </span>and @codingScheme=
  ‘urn:who.int:hrh:mds’]</span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:30'>
  <td rowspan=6 height=96 class=xl86 width=132 style='border-bottom:1.0pt solid white;
  height:96.0pt;border-top:none;width:132pt'><span>Professional License and
  Certification</span></td>
  <td class=xl75 width=138 style='width:138pt'><span>Document type</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>credential/codedType/@code</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Document
  category</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>credential/codedType/@category</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Issuing
  institution</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>credential/issuingAuthority</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Date
  of issue</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>credential/credentialIssueDate</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Date
  of expiration</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>credential/credentialRenewalDate</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl75 width=138 style='height:16.0pt;width:138pt'><span>Photograph</span></td>
  <td class=xl76 width=503 style='width:503pt'><span>credential/extension<font
  class="font6">[@urn =’urn:who.int:hrh:mds’ </font><font class="font5">and
  @type='photograph']/image</font></span></td>
 </tr>
 <tr height=16 style='height:16.0pt;mso-yfti-irow:36'>
  <td rowspan=3 height=47 class=xl86 width=132 style='height:47.0pt;border-top:
  none;width:132pt'><span>Employment Status</span></td>
  <td class=xl80 width=138 style='width:138pt'><span>Employment status</span></td>
  <td class=xl80 width=503 style='width:503pt'><span>record/@status</span></td>
 </tr>
 <tr height=16 style='height:16.0pt'>
  <td height=16 class=xl81 width=138 style='height:16.0pt;width:138pt'><span>Occupational
  category</span></td>
  <td class=xl81 width=503 style='width:503pt'><span>codedType/@code</span></td>
 </tr>
 <tr height=15 style='height:15.0pt'>
  <td height=15 class=xl81 width=138 style='height:15.0pt;width:138pt'><span>Employment
  title</span></td>
  <td class=xl81 width=503 style='width:503pt'><span>codedType[@code]</span></td>
 </tr>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:39'>
  <td height=15 class=xl65 width=132 style='height:15.0pt;width:132pt;
  padding-bottom:0in;padding-top:0in'>Disciplinary action</td>
  <td class=xl65 width=138 style='width:138pt;padding-bottom:0in;padding-top:
  .7pt'><span>Complaints</span></td>
  <td class=xl66 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>credential/extension[<font class="font6">@urn =
  ‘urn:who.int:hrh:mds’ </font><font class="font5">and
  @type='complaints']/@value</font></span></td>
 </tr>
 <tr height=15 style='height:15.0pt;mso-yfti-irow:40'>
  <td rowspan=2 height=46 class=xl65 width=132 style='border-bottom:1.0pt solid black;
  height:46.0pt;width:132pt'><span>Data Submission Institution</span></td>
  <td class=xl65 width=138 style='width:138pt;padding-bottom:0in;padding-top:
  .7pt'><span>Name of the institution<span
  style="mso-spacerun:yes">&nbsp;</span></span></td>
  <td class=xl66 width=503 style='width:503pt;padding-bottom:0in;padding-top:
  .7pt'><span>record/@sourceDirectory</span></td>
 </tr>
 <tr height=31 style='height:31.0pt'>
  <td height=31 class=xl69 width=138 style='height:31.0pt;width:138pt'><span>Date
  and time of submission</span></td>
  <td class=xl82 width=503 style='width:503pt'><span>record/@updated</span></td>
 </tr>
</table>




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

declare   namespace   csd = "urn:ihe:iti:csd:2013";
declare variable $careServicesRequest as item() external;
let $doc := /.


let $xpaths := map{
    "Posting/Facility": "csd:facilities/csd:facility",
    "ID Number": "csd:otherID/@code",
    "ID Date of Issue":"csd:otherID/@issueDate/text()",
    "ID Date of Expiration":"csd:otherID/@expirationDate/text()",
    "Place of Issue": "csd:otherID/@assigningAuthorityName/text()",
    "First name": "csd:demographic/csd:name/csd:forename/text()",
    "Last name": "csd:demographic/csd:name/csd:surname/text()",
    "Middle name":"csd:demographic/csd:name/csd:otherNames[@type='middle']/text()",
    "Maiden name": "csd:demographic/csd:name/csd:otherNames[@type='maiden']/text()",
    "Other name 1" : "csd:demographic/csd:name/csd:otherNames[@type='other_1']/text()",
    "Other name 2" :"csd:demographic/csd:name/csd:otherNames[@type='other_2']/text()",
    "Other name 3" : "csd:demographic/csd:name/csd:otherNames[@type='other_3']/text()",
    "Place of birth country":"csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds' and @type='birth']/csd:country/text()",
    "Place of birth town": "csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds' and @type='birth']/csd:town/text()",
    "Father’s name":"csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds' and @type='birth']/csd:fatherName/text()",
    "Mother’s name":"csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds' and @type='birth']/csd:motherName/text()",
    "Photograph" :    "csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds'  and @type='photograph']/csd:image/text()",
    "Date of birth" :  "csd:demographic/csd:dateOfBirth/text()",
    "Sex at birth " : "csd:demographic/csd:gender/text()",
    "Citizenship at birth" : "csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds' and @type='citizenship']/csd:birth/text()" , 
    "Citizenship at present country of residence":"csd:demographic/csd:extension[@urn='urn:who.int:hrh:mds' and @type='citizenship']/csd:residence/text()",
    "Ability in written languages":"csd:language[@code]/@written-ability",
    "Ability in spoken languages": "csd:language[@code]/@spoken-ability",
    "Address Country":"csd:demographic/csd:address/csd:addressLine[@component='country']/text()",
    "Address City": "csd:demographic/csd:address/csd:addressLine[@component='city']/text()" ,
    "Street Address": "csd:demographic/csd:address/csd:addressLine[@component='streetAddress']/text()",
    "Address Postal Code" :"csd:demographic/csd:address/csd:addressLine[@component='postalCode']/text()" ,
    "Telephone number" : "csd:demographic/csd:contactPoint/csd:codedType[@code='BP'  and @codingScheme='urn:ihe:iti:csd:2013:contactPoint']/text()",
    "Email address" : "csd:demographic/csd:contactPoint/csd:codedType[@code='EMAIL' and @codingScheme='urn:ihe:iti:csd:2013:contactPoint']/text()",
    "Emergency contact name" : "csd:demographic/csd:contactPoint/csd:codedType[@code='EMERGENCY'  and @codingScheme= 'urn:who.int:hrh:mds']/text()",
    "Professional License and Certification Document Type" : "csd:credential/csd:codedType/@code",
    "Professional License and Certification Document Category" : "csd:credential/csd:codedType/@category",
    "Professional License and Certification Issuing Institution": "csd:credential/csd:issuingAuthority/text()",
    "Professional License and Certification Date of Issue" : "csd:credential/csd:credentialIssueDate/text()",
    "Professional License and Certification Date of Expiration" : "csd:credential/csd:credentialRenewalDate/text()" ,
    "Professional License and Certification Scan/Photograph" :  "csd:credential/csd:extension[@urn ='urn:who.int:hrh:mds' and @type='photograph']/csd:image/text()" ,
    "Employment status" : "csd:record/@status" ,
    "Occupational category" : "csd:codedType/@code" ,
    "Employment title" : "csd:codedType[@code]/text()",
    "Complaints" : "csd:credential/csd:extension[@urn = 'urn:who.int:hrh:mds' and @type='complaints']/@value",
    "Data submission  institution ": "csd:record/@sourceDirectory",
    "Data submission date" : "csd:record/@updated" 
}



let $total := count($doc/csd:CSD/csd:providerDirectory/csd:provider)

let $stats := 
  map:for-each($xpaths, 
    function($label,$xpath) {
      let $matches := 
        for $provider in $doc/csd:CSD/csd:providerDirectory/csd:provider
        let $bindings := map{"provider":$provider}
	let $expr := " declare namespace csd = 'urn:ihe:iti:csd:2013'; declare variable $provider external; $provider/" || $xpath
	let $result := xquery:eval($expr,$bindings) 
	where exists($result)
	return 	$provider
      let $count:=count($matches)
      return <tr count="{$count}" xpath="{$xpath}"><td>{$label}</td><td>{$count}</td><td>{$count div $total * 100} %</td></tr>
    })


return 
  <table >
  <tr><th style='width:33%'>Data Field</th><th style='width:33%'>Number of Records<br/>Total of {$total}</th><th style='width:33%'>Percentage</th></tr>
   { 
     for $stat in $stats
     order by $stat/@count descending
     return $stat
   }
  </table>

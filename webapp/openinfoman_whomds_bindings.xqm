module namespace page = 'http://basex.org/modules/web-page';

(:Import other namespaces.  :)
import module namespace csd_webconf =  "https://github.com/openhie/openinfoman/csd_webconf";
import module namespace csd_webui =  "https://github.com/openhie/openinfoman/csd_webui";
import module namespace csr_proc = "https://github.com/openhie/openinfoman/csr_proc";
import module namespace csd_dm = "https://github.com/openhie/openinfoman/csd_dm";


declare namespace csd = "urn:ihe:iti:csd:2013";


declare function page:is_whomds($search_name) {
  let $function := csr_proc:get_function_definition($csd_webconf:db,$search_name)
  let $ext := $function//csd:extension[  @urn='urn:openhie.org:openinfoman:adapter' and @type='whomds']
  return (count($ext) > 0) 
};


declare function page:get_actions($search_name) {
  let $function := csr_proc:get_function_definition($csd_webconf:db,$search_name)
  return 
    (
    for $act in $function//csd:extension[  @urn='urn:openhie.org:openinfoman:adapter:whomds:action']/@type
    return string($act)
  )
};



declare
  %rest:path("/CSD/csr/{$doc_name}/careServicesRequest/{$search_name}/adapter/whomds")
  %output:method("xhtml")
  function page:show_endpoints($search_name,$doc_name) 
{  
    if (not(page:is_whomds($search_name)) ) 
      then ('Not a WHO MDS Compatible stored function'    )
    else 
      let $actions := page:get_actions($search_name)
      let $contents := 
      <div>
        <h2>WHO MDS Operations on {$doc_name}</h2>
        { 
          if ($actions = 'completeness')  
	  then
	   <span>
             <h3>Completeness Report</h3>
	     {
	       let $url := csd_webui:generateURL( ("CSD/csr/" , $doc_name , "/careServicesRequest/",$search_name, "/adapter/whomds/completeness"))
	       return <p>Get the  <a href="{$url}">Completness Report</a></p>
	     }
	   </span>
	  else ()
	}
      </div>
      return csd_webui:wrapper($contents)
};


 
declare
  %rest:path("/CSD/csr/{$doc_name}/careServicesRequest/{$search_name}/adapter/whomds/completeness")
  function page:completness($search_name,$doc_name) 
{
  if (not(page:is_whomds($search_name)) ) 
    then ('Not a WHO MDS Compatible stored function'    )
  else 
    let $doc :=  csd_dm:open_document($csd_webconf:db,$doc_name)
    let $function := csr_proc:get_function_definition($csd_webconf:db,$search_name)

    let $careServicesRequest := 
      <csd:careServicesRequest>
       <csd:function urn="{$search_name}" resource="{$doc_name}" base_url="{csd_webui:generateURL()}">
         <csd:requestParams/>
       </csd:function>
      </csd:careServicesRequest>
    let $stats := csr_proc:process_CSR_stored_results($csd_webconf:db, $doc,$careServicesRequest)
    let $output := $function/@content-type
    let $mime := 
      if (exists($output))
      then string($output)
      else "text/html"
    let $content := 
      if (not($output = 'text/html'))
      then $stats
      else
        csd_webui:wrapper(
	  <div>
	    <h4>WHO MDS Completeness Report For {$doc_name}</h4>
	    {$stats}
	  </div>
	)
    return 
    ( 
      <rest:response>
	<http:response status="200" >
          <http:header name='Content-Type' value="{$mime}"/>
	</http:response>
      </rest:response>
      ,$content
    )


};



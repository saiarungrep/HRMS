<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html manifest="cloudedit.appcache">
<!--<html>-->

<head>

<% 
response.setHeader("Pragma","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Expires","0"); 
response.setDateHeader("Expires",-1); 

if(session.getAttribute("emailid")==null){
%> 
	<c:redirect url="/logout"/>
	
	<%
	
}
	%>



  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no" />
  <title>HTML Live Editor</title>
  <link href="resources/css2/cloudEdit.min.css" rel="stylesheet">
  <link href="resources/css2/contextMenu.min.css" rel="stylesheet">
</head>

<body>
  <section>
    <div class="row btnGroup">
      <div class="column-33 toggleGroup">
        <button class="btn togglePane" id="htmlToggle" data-editor="html" title="Toggle HTML">HTML</button>
        <button class="btn togglePane" id="cssToggle" data-editor="css" title="Toggle CSS">CSS</button>
        <button class="btn togglePane" id="jsToggle" data-editor="js" title="Toggle JS">JavaScript</button>
       <!--  <button class="btn" id="consoleToggle" title="Toggle JavaScript Console">Console</button> -->
        <button class="btn btn-active" id="liveEdit" title="Toggle Live Edit Mode">LiveEdit</button>
      </div><!--
      --><div class="column-33">
        <h1>HTML Live Editor</h1>
      </div><!--
      --><div class="column-33 btnGroup last">
        <button class="btn" id="previewToggle" title="Enlarge Preview">Preview</button>
        <button class="btn" id="clear" title="Click to clear all panes">Clear</button>
        <button class="btn" id="download" title="Download to computer">Download</button>
        <!-- <button class="btn" id="save" title="Save to localStorage">Save</button> -->
        <button class="btn" id="load" title="Load from localStorage">Load</button>
        <button class="btn" id="run" title="Run...">Run</button>
      </div>
    </div>
    <div class="row windowGroup">
      <div class="column-33">
        <div class="window html">
          <pre id="html"></pre>
          <span class="windowLabel" id="htmlLabel">HTML</span>
        </div>
      </div><!--
      --><div class="column-33">
        <div class="window css">
          <pre id="css"></pre>
          <span class="windowLabel" id="cssLabel">CSS</span>
        </div>
      </div><!--
      --><div class="column-33">
        <div class="window js">
          <pre id="js"></pre>
          <span class="windowLabel" id="jsLabel">JavaScript/jQuery 1.x</span>
        </div>
      </div>
    </div>
   <div class="row console"  style="visibility: hidden; display:inline;">
      <pre id="console"></pre>
       <span class="windowLabel" id="consoleLabel">Console</span> 
    </div> 
    <div class="row preview">
      <iframe id="iframe" name="CloudEdit"
        sandbox="allow-scripts allow-pointer-lock allow-same-origin allow-popups allow-forms"
        allowtransparency="true">
      </iframe>
      <span class="windowLabel" id="iframeLabel">Preview</span>
      <span id="iframeClose">x</span>
    </div>
  </section>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <script src="resources/js2/ace/ace.js" type="text/javascript" charset="utf-8"></script>
  <script src="resources/js2/ace/ext-emmet.js" type="text/javascript" charset="utf-8"></script>
  <script src="resources/js2/ace/emmet.js" type="text/javascript" charset="utf-8"></script>
  <script src="resources/js2/jquery.ui.position.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="resources/js2/contextMenu.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="resources/js2/jqconsole.min.js" type="text/javascript" charset="utf-8"></script>
  <script src="resources/js2/cloudEdit.min.js" type="text/javascript" charset="utf-8"></script>
</body>

</html>
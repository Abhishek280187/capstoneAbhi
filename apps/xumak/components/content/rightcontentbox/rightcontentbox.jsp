<%--

  Right Content Box component.

  Right Content Box component for Sub Page template

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%>
<%@ page import="org.json.*" %>
<script type="text/javascript" src="/etc/designs/xumak/clientlib/js/CustomPathField.js"></script>
<div id="box-frame-right-content">
<div id="box-frame-right-content-text"><%=properties.get("heading","heading")%></div>
</div>

<%if(currentNode.hasProperty("links")){
    if(currentNode.getProperty("links").isMultiple()){
    Property references = currentNode.getProperty("links");     
  	Value[] values = references.getValues();
	for (Value value : values) {
        JSONObject jsonObject = new JSONObject(value.getString());
        String url = (String) jsonObject.get("url");
        String text = (String) jsonObject.get("text");
%>

<div id="box-frame-right-content-class">
<div class="box-frame-right-content-class-text">
    <%
    if(url != null && url.length() > 0){
            if(url.toLowerCase().startsWith("/content")){%>
    			<a href="<%=url%>.html"><%=text%></a>
    		<%}else{%>
				<a href="<%=url%>"><%=text%></a>
    		<%}
    }else{%>
		<%=text%>
    <%}%>
    </div>
</div>
<%}}
    else{
		String value = currentNode.getProperty("links").getString();
        JSONObject jsonObject = new JSONObject(value);
        String url = (String) jsonObject.get("url");
        String text = (String) jsonObject.get("text");

        %>
<div id="box-frame-right-content-class">
<div class="box-frame-right-content-class-text">

    <%
    if(url != null && url.length() > 0){
            if(url.toLowerCase().startsWith("/content")){%>
    			<a href="<%=url%>.html"><%=text%></a>
    		<%}else{%>
				<a href="<%=url%>"><%=text%></a>
    		<%}
    }else{%>
		<%=text%>
    <%}%>
    </div>
</div>
    <%}
}%>

<div id="box-frame-right-content-class-close"></div>






<%@include file="/libs/foundation/global.jsp"%><%
%><%@ page import="com.day.text.Text,
                   com.day.cq.wcm.foundation.Image,
                   com.day.cq.commons.Doctype,
				   com.day.cq.wcm.api.WCMMode,org.json.*" %>
<script type="text/javascript" src="/etc/designs/xumak/clientlib/js/CustomPathFieldSocial.js"></script>
<div id="box-frame-left-follow"></div>

<%
                       if(currentNode!=null && currentNode.hasProperty("links")){
                       Property references = currentNode.getProperty("links");     
                       Value[] values = references.getValues();
                       for (Value value : values) {
                       JSONObject jsonObject = new JSONObject(value.getString());
                       String url = (String) jsonObject.get("url");
                       String text = (String) jsonObject.get("text");
                       String imageURL = (String) jsonObject.get("imageURL");
%>

<div class="box-frame-left-link">
<a target="_blank" href="<%=url%>">
<img alt="<%=text%>" src="<%=imageURL%>">
</a>
</div>
                           <%}} else{%>Enter social links<%}%>






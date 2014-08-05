<%@include file="/libs/foundation/global.jsp"%>
<%@ page import="com.day.cq.wcm.api.WCMMode" %>
<%
String heading = properties.get("heading", "");
String subheading = properties.get("subheading", "");
String desc = properties.get("description", "");
if(WCMMode.fromRequest(request) == WCMMode.EDIT){
if(heading=="" &&  subheading=="" && desc==""){

    %>Please configure heading<%}}%>


<cq:include path="social" resourceType="xumak/components/content/social" />

<div id="box-services"><%=properties.get("heading","heading")%><br>
<h4><%=properties.get("subheading","")%></h4>
</div>

<div id="box-services-content">
<p><%=properties.get("description","")%> </p>
</div>
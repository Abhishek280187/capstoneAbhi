<%@include file="/libs/foundation/global.jsp"%>
<%@ page import="com.day.cq.wcm.api.WCMMode" %>
<%
String heading = properties.get("heading", "");
String subheading = properties.get("subheading", "");
String image = properties.get("image", "");
String headingLink = properties.get("headingLink", "");
if(WCMMode.fromRequest(request) == WCMMode.EDIT){
if(heading=="" &&  subheading=="" && headingLink=="" && image==""){

    %>Please configure heading<%}}%>

<div class="mdtitle">
	<div class="mdimage">
		<a href="<%=headingLink%>.html">
			<img src="<%=image%>">
		</a>
	</div>
	<a href="<%=headingLink%>.html">
		<%=heading%>
	</a>
	<h4><p><%=subheading%></p></h4>
</div>
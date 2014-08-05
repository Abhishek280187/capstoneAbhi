<%@include file="/libs/foundation/global.jsp"%>
<%@ page import="com.day.cq.wcm.api.WCMMode" %>

<div id="box-services-content">
<div id="bxc-content">
    <%
    String image = properties.get("image", "");
    if(image!=""){%>
<div style="float:left" class="tumb">
<a href="<%=properties.get("link","#")%>.html">
<img src="<%=properties.get("image","image")%>" alt="" title="">
</a>
</div>
<div class="titles">
<a href="<%=properties.get("link","#")%>.html"><%=properties.get("heading","Edit Heading")%></a>
 </div>
<div class="texts">
    <p> <%=properties.get("description","")%></p></div>

    <%}else{%>
    <div class="titles">
		<a href="<%=properties.get("link","#")%>.html"><%=properties.get("heading","")%></a>
 	</div>
    <br/>
    	 <%=properties.get("description","")%>
    <%}%>
</div>
    </div>

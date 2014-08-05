<%@include file="/libs/foundation/global.jsp"%>

<%
String alignmentType = properties.get("alignmenttype", "right");
String image = properties.get("image", "");
String heading = properties.get("heading", "");
String subheading = properties.get("subheading", "");
String para1 = properties.get("para1", "");
String para2 = properties.get("para2", "");
String buttonLink = properties.get("buttonlink", "");
String imageLink = properties.get("imagelink", "");

if(image!=""&& heading!="" && buttonLink!="" ){

    %>


<li style="float: left;">
	
	<a href="<%=imageLink%>.html">
        <% if(alignmentType.equals("right")){%>
		<img style="" src="<%=image%>" class="boximg">
        <% } else {%>
        <img style="float:right; padding-right: 90px; padding-left: 0px;" src="<%=image%>" class="boximg">
        <%}%>
    </a>
    <% if(alignmentType.equals("right")){%>
	<div style="" class="boxright">
         <% } else {%>
        <div style="width: 400px" class="boxright">
		<%}%>
		<div class="boxright-tle">
			<div class="marquee-slide-title"><%=heading%></div>
			<div class="marquee-slide-sub-title"><%=subheading%></div>
		</div>
		<div class="boxright-content">
			<p>&nbsp;</p> <p>&nbsp;</p> 
            <%if(para1=="" && para2==""){%>
            <p>&nbsp;</p> <p>&nbsp;</p> <p>&nbsp;</p> 
            <%}%>
            <%if(para1!=""){%>
            <p><%=para1%></p>
            <%} if(para2!=""){%>
            <p><strong><%=para2%><br> </strong></p>
            <%}%>
				<div class="boxright-content-get"><a href="<%=buttonLink%>.html" id="get">getstarted</a></div>



		</div>
	</div>
</li>

    <%} else {%>
Please Configure Carousel Slide component
    <%}%>


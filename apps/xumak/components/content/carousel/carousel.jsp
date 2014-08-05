<%@include file="/libs/foundation/global.jsp"%>

<%
String[] pages = properties.get("pages", String[].class);


Session session = slingRequest.getResourceResolver().adaptTo(Session.class);  
Node rootNode = session.getRootNode();

if(pages.length!=0){

    %>
<script type="text/javascript">
$(document).ready(function(){
$("#slider").easySlider({
auto: true,
continuous: true,
pause: 7000
});
});

</script> 

<div id="box">

    <div id="boxs">

        <div id="slider" style="width: 976px; height: 339px; overflow: hidden;">
            <ul style="width: 4880px; margin-left: -976px;">

                <%
        for(int i=0;i<pages.length;i++){ 

		String relPagePath = pages[i].substring(1);
        String slidePath = relPagePath +"/jcr:content/slide-par/carouselslide" ;

        Node slideNode=null;
        if(rootNode.hasNode(slidePath)){
        slideNode=rootNode.getNode(slidePath);
        }

        String alignmentType="", image="", heading="", subheading="", para1="", para2="", buttonLink="", imageLink="";
        if(slideNode!=null){
			if(slideNode.hasProperty("alignmenttype")){
			alignmentType = slideNode.getProperty("alignmenttype").getString();
			}
			if(slideNode.hasProperty("image")){
			image = slideNode.getProperty("image").getString();
			}
			if(slideNode.hasProperty("heading")){
			heading = slideNode.getProperty("heading").getString();
			}
			if(slideNode.hasProperty("subheading")){
			subheading = slideNode.getProperty("subheading").getString();
			}
			if(slideNode.hasProperty("para1")){
			para1 = slideNode.getProperty("para1").getString();
			}
			
			if(slideNode.hasProperty("para2")){
				para2 = slideNode.getProperty("para2").getString();
			}
			if(slideNode.hasProperty("buttonlink")){
			buttonLink = slideNode.getProperty("buttonlink").getString();
			}
			if(slideNode.hasProperty("imagelink")){
			imageLink = slideNode.getProperty("imagelink").getString();
			}
        }
                %>


<li style="float: left;">
	
	<a href="<%=imageLink%>.html">
        <% if(alignmentType!="" && alignmentType.equals("right")){%>
		<img style="" src="<%=image%>" class="boximg">
        <% } else {%>
        <img style="float:right; padding-right: 90px; padding-left: 0px;" src="<%=image%>" class="boximg">
        <%}%>
    </a>
    <% if(alignmentType!="" && alignmentType.equals("right")){%>
	<div style="" class="boxright">
         <% } else {%>
        <div style="width: 400px" class="boxright">
		<%}%>
		<div class="boxright-tle">
			<div class="marquee-slide-title">
                <%if(heading!=""){%>
                <%=heading%>
                <%}%>
            </div>
			<div class="marquee-slide-sub-title"><%if(subheading!=""){%><%=subheading%><%}%></div>
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


        <% }%>



            </ul>

        </div>

       

       </div>

    </div>


    <%} else {%>
Please Configure Carousel component
    <%}%>
<%@include file="/libs/foundation/global.jsp"%>
<%@ page import="com.day.text.Text,
                   com.day.cq.wcm.foundation.Image,
                   com.day.cq.commons.Doctype" %>

<div style="position:absolute;" id="footer-copy2">
<div style="float:left; position:absolute;top:-10px;">
</div>
<%
Resource ref = currentStyle.getDefiningResource("imageReference");
    if (ref == null) {
         ref = currentStyle.getDefiningResource("footerIimage");
    }
    %>
<%--
<a href="<%= currentStyle.get("imageLink","#")%>.html">
    <%
        if (ref == null) {
        %>Image<%
    } else {
        Image img = new Image(ref);
        img.setItemName(Image.NN_FILE, "image");
        img.setItemName(Image.PN_REFERENCE, "imageReference");
        img.setSelector("img");
        img.setDoctype(Doctype.fromRequest(request));
        img.setAlt("Image");
        //img.loadStyleData("float:right; padding-left:75px; padding-top:-50px");

        img.draw(out);
    }
    %>
   </a> 
--%>
<a href="<%= currentStyle.get("imageLink","#")%>.html">
<img border="0" alt="" style="float:right; padding-left:75px; padding-top:-50px" src="<%= currentStyle.get("image","#")%>">
</a>
    <p style="float:left; vertical-align:bottom">
	<%= currentStyle.get("copyrightText"," ")%>
        <a href="<%= currentStyle.get("contactUs","#")%>.html">CONTACT&nbsp;US</a></p> 
</div>
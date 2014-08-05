<%--
Draws the top navigation

--%>
	<%@include file="/libs/foundation/global.jsp"%><%
	%><%@ page import="java.util.Iterator,
			com.day.text.Text,
			com.day.cq.wcm.api.PageFilter,
			com.day.cq.wcm.api.Page,
			com.day.cq.commons.Doctype,
			org.apache.commons.lang.StringEscapeUtils" %><%



	// get navigation root page Page 

	String pagePath = currentPage.getPath();
	String[] temp = pagePath.split("\\/");

	Page navRootPage = currentPage.getAbsoluteParent(2);

//if(temp[3].equalsIgnoreCase("es"))
//     navRootPage = currentPage.getAbsoluteParent(2);


	// check to make sure the page exists 
	if (navRootPage == null && currentPage != null) {   
		navRootPage = currentPage; 
	}

	if (navRootPage != null) {
	   Iterator<Page> children = navRootPage.listChildren(new PageFilter(request));
	%> 


	<div id="menu"> 

        <div class="submenu-home">   
            <a href="<%=navRootPage.getPath()%>.html"><%= StringEscapeUtils.escapeXml(navRootPage.getTitle())%> </a>  <br/> 
            <h6><%= navRootPage.getDescription() %>  </h6>
        </div> 

    <%
	   while (children.hasNext()) {
			 Page child = children.next();
	%>
			 <div class="submenu-home">
				<a href="<%= child.getPath() %>.html"> 
                    <%= StringEscapeUtils.escapeXml(child.getTitle())%> </a> 
                 <h6><%= child.getDescription() %> </h6>
			</div>
	<%
		}
        %> </div> <%
	}
	%>

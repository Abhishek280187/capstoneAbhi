<%@ page import="com.day.cq.wcm.foundation.Search" %>
<%@ page import="org.apache.commons.lang.StringEscapeUtils" %>
<%@ page import="java.util.*" %>
<%@include file="/libs/foundation/global.jsp" %><%

    /* initialize CQ5 WCM Search */
    Search search = new Search(slingRequest);

    /* search form */
%>
<div id="box-services">Search<br>
</div>

<br/><br/>

<div id="box-services-content"> 

<div id="search-results">     


<%
    /* process search results */
    String searchIn = (String) properties.get("searchIn");
    String requestSearchPath = request.getParameter("q");
    if (searchIn != null) {
        // only allow the "path" request parameter to be used if it
        // is within the searchIn path configured
        if (requestSearchPath != null && requestSearchPath.startsWith(searchIn)) {
            search.setSearchIn(requestSearchPath);
        } else {
            search.setSearchIn(searchIn);
        }
    } else if (requestSearchPath != null) {
        search.setSearchIn(requestSearchPath);
    }

    Search.Result result = search.getResult();


    /* handle no results */
    if (result == null || result.getHits() == null) {
        if(currentNode.hasProperty("noResultsText")){
%>
    <%= properties.get("noResultsText", String.class)%><%}

    /* handle result list */
    } else {
        List<Search.Hit> hits = result.getHits();
%>

<h1>Search results for <%=request.getParameter("q")%></h1> <ul>
<%

        for (Search.Hit hit : hits) {
        	%>

<div class="searchresult"> 

        <br/><%= hit.getIcon() %>
    <li>
    <h4>
        <a href="<%= hit.getURL() %>"><%= hit.getTitle() %></a>
     </h4>
     </li>
 </div>


<%        	
        }
%>
</ul></div>
    <br/><br/>

<%


        /* pagination */
        List<Search.Page> resultPages = result.getResultPages();

        if (!resultPages.isEmpty()) {

          

            if (result.getPreviousPage() != null) {
%>
<a href="<%= result.getPreviousPage().getURL() %>"><%= properties.get("previousText", "back")%></a><%

            }
            for (Search.Page resultPage : resultPages) {
                if (resultPage.isCurrentPage()) {
%>
<%= resultPage.getIndex() + 1 %>
<%
                } else {
%>
<a href="<%= resultPage.getURL() %>"><%= resultPage.getIndex() + 1 %></a>
<%
                }
            }
            if (result.getNextPage() != null) {
%>
<a href="<%= result.getNextPage().getURL() %>"><%= properties.get("nextText", "next")%></a>
<%
            }

        }
    }
%>
</div>
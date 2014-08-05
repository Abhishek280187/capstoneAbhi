<%--

  Bottom List component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here
    String label = properties.get("title", String.class);
    String linkPath = properties.get("linkPath", String.class);
if(label!=null || linkPath!=null){
%>



                                <div id="mdisi-small">
                                    <div class="mdisi-image"></div>
                                    <% if(linkPath!=null){%>

                                        <a href="<%=linkPath%>.html">

                                          <%=label%>

                                    </a> <%}else{ %>
                                    <%=label%> <%}%>
                                </div>


<%
    }else{ %>
Double Click to edit the dialog
<%}


    %>

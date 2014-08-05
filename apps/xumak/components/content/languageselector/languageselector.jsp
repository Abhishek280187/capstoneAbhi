<%--

  Language Selector component.



--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	String title = currentStyle.get("pageTitle", String.class);
	String firstCountryLocation = currentStyle.get("firstCountryLocation", String.class);
	String firstCountryImage = currentStyle.get("firstCountryImage", String.class);
	String secondCountryLocation = currentStyle.get("secondCountryLocation", String.class);
	String secondCountryImage = currentStyle.get("secondCountryImage", String.class);
%>


<%=title%>
                                            <div class="flag1">

                                                <a href="<%=firstCountryLocation%>.html">
                                                    <img src="<%=firstCountryImage%>">
                                                </a>

                                            </div>
                                            <div class="flag2">
											 <a href="<%=secondCountryLocation%>.html">
                                                <img src="<%=secondCountryImage%>">
                                                </a>
                                            </div>

  
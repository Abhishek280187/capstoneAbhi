<%@include file="/libs/foundation/global.jsp" %>
<%@ page import="com.day.cq.commons.Doctype, com.day.cq.i18n.I18n, com.day.text.Text" %>
<%
    I18n i18n = new I18n(slingRequest);
    
    int absLevel = 2;
    Page homePage = currentPage.getAbsoluteParent(absLevel);
    String home = homePage != null ? homePage.getPath() : Text.getAbsoluteParent(currentPage.getPath(), absLevel);
    String xs = Doctype.isXHTML(request) ? "/" : "";
    long hierMod = sling.getService(com.day.cq.wcm.foundation.HierarchyModificationListener.class).getLastModified(home);

%>
<div id="konten-top">
   <div id="logo">
        <cq:include path="logo" resourceType="xumak/components/content/logo" />
    </div>
    <div id="topright">
	<div id="topright-left">

 <cq:include path="languageselector" resourceType="xumak/components/content/languageselector"/>
	</div>

<div id="topright-right">
<%

    String pagePath = currentPage.getPath();

	String resultsPath ="";
    if(pagePath.contains("xumak/en")){
    	resultsPath = "/content/xumak/en/search-results.html";
    } else {
        resultsPath = "/content/xumak/es/search-results.html";

    }

    %>

<form action="<%=resultsPath%>" method="get" name="xumakSearch">

                        <div class="input_box">
                            <label for="h-search-field" style="display: none;"><%= i18n.get("Enter your search query") %></label>
                            <input class="search" type="text" value="" name="q" <%= xs %> 
                            onblur="this.value = 'search';" onfocus="if (this.defaultValue == this.value) this.value = '';" onkeydown="if (event.keyCode == 13) this.form.submit();"  id="query" />

                        </div>


                </form>       


        </div>
    </div>

 </div>
<div id="menu">
	<cq:include path="topnav" resourceType="/apps/xumak/components/content/topnav" />

</div>

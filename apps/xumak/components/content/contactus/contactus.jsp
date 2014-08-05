<%--

  Contact-Us component.

  

--%><%
%><%@include file="/libs/foundation/global.jsp"%><%
%><%@page session="false" %><%
%><%
	// TODO add you code here

    String title = properties.get("jcr:title", String.class);
 	String desc = properties.get("jcr:description", String.class);
	String imageLoc = properties.get("fileReference", String.class);
if(title!=null && desc!=null && imageLoc!=null){
%>


<div class="box-frame-left-link">
<a target="_blank" href="http://www.twitter.com/TeamXumaK">
<img alt="Follow Us On Twitter" src="/etc/designs/xumak/clientlib/images/twitt.png">
</a>
</div>
<div class="box-frame-left-link">
<a target="_blank" href="http://www.facebook.com/XumaK">
<img alt="Follow Xumak on Facebook" src="/etc/designs/xumak/clientlib/images/face.png">
</a>
</div>
<div class="box-frame-left-link">
<a target="_blank" href="http://www.linkedin.com/company/2036835?trk=pro_other_cmpy">
<img alt="Follow Xumak on LinkedIn" src="/etc/designs/xumak/clientlib/images/linkedin.jpg">
</a>
</div>

<div id="box-services"><%=title%><br>
<h4><%=desc%></h4>
</div>

<div id="box-services-content">
<div>
 <img src="<%=imageLoc%>" alt="">
        </div>   
   <% }%>
<p>Our Contact Information is as follows or you may contact us via the provided form:</p> 
<p><strong>USA:</strong><br> 212 E. Rowland St. #412, Covina, CA 91723; tel: +1.213.232.3366 |&nbsp;fax: +1.213.937.4032</p>
<p><strong>Latin America:</strong><br>
    Diagonal 6, 12-42 Zona 10, Design Center, Torre 1, Nivel 14;  Guatemala City, Guatemala,&nbsp;Central America; tel: +1.213.232.3366 |&nbsp;fax: +1.213.937.4032</p>


<form method="POST" action="contact.html">
                                    <div id="box-services2">
                                      <div class="box-name">First Name:</div>
                                        <div class="box-name2">Last Name:</div>
									<div class="box-input5-first"><input type="text" name="firstname" class="textinput"></div>
									<div class="box-input-second"><input type="text" name="lastname" class="textinput"></div>
                                        <div class="box-name">Email:</div>
                                        <div class="box-name2">Phone:</div>
									<div class="box-input5"><input type="text" name="email" class="textinput"></div>
									<div class="box-input"><input type="text" name="phone" class="textinput"></div>
                                        <div class="box-name">Message:</div>
                                        <div class="box-name"></div>
									<textarea name="clientMessage" class="box-serv3"></textarea>
                                        <input type="hidden" value="contact.html" name="pageLocation">
                                        <div id="submitbox">
                                            <input type="submit" value="Submit1" class="submits" name="submit">
                                        </div>
                                    </div>
                                </form>


</div>
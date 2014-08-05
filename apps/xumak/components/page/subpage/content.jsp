<%@include file="/libs/foundation/global.jsp" %>
<div id="box2">
	<div id="box-sub">
	<div style="float:left" id="box-sub-right">
		<cq:include path="content-image" resourceType="foundation/components/image" />
	</div>
 	<div id="box-sub-left">
 		<cq:include path="content-text" resourceType="foundation/components/text" />
	</div>
	</div>
</div>

<div id="box-frame-left">
 <div id="box-frame-left-follow"></div>
	<cq:include path="left-parsys" resourceType="foundation/components/parsys" />
 </div>


<div id="box-frame-right">
<cq:include path="right-parsys" resourceType="foundation/components/parsys" />
	<div id="box-frame-right-content-class-close"></div>
</div>



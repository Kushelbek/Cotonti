<!-- BEGIN: MAIN -->
	
<div id="content">
	<div class="padding20 whitee">
		<div id="left">
			<h1>{PHP.L.Users}</h1>
			<div class="breadcrumb">{PHP.themelang.list.bread}: <a href="users.php">{PHP.L.Users}</a></div>
			&nbsp;
			<div class="nou">
				{USERS_TOP_FILTERS_COUNTRY} {USERS_TOP_FILTERS_MAINGROUP} {USERS_TOP_FILTERS_GROUP}
			</div>
			&nbsp;
			<!-- IF {USERS_TOP_TOTALUSERS} > 0 -->
			<p style="border-bottom:1px solid #ececec">{PHP.themelang.list.sort}<br />
			<strong>{USERS_TOP_NAME} &nbsp; {USERS_TOP_MAINGRP} &nbsp; {USERS_TOP_COUNTRY} &nbsp; {USERS_TOP_LASTLOGGED} &nbsp; {USERS_TOP_REGDATE}</strong>
			</p>
			<!-- ELSE -->
			<h4>{PHP.f}</h4>
			<p class="red">{PHP.themelang.users.nothing}.</p>
			<!-- ENDIF -->

			<!-- BEGIN: USERS_ROW -->
			<div class="{USERS_ROW_ODDEVEN} nou toprow" style="font-size:.9em; padding-left:5px">
			<div style="float:left; width:137px; font-size:1.2em">
				<strong>{USERS_ROW_NAME}</strong>
			</div>
			<div style="float:left; width:116px;">
				{USERS_ROW_MAINGRP}
			</div>
			<div style="float:left; width:96px;">
				{USERS_ROW_COUNTRY}
			</div>
			<div style="float:left; width:121px;">
				{USERS_ROW_LASTLOG}
			</div>
			<div style="float:left; width:90px;">
				{USERS_ROW_REGDATE}
			</div>
			<div class="clear"></div>
			</div>
			<!-- END: USERS_ROW -->
		
			<!-- IF {USERS_TOP_PAGNAV} -->
			<div class="paging">{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</div>
			<!-- ENDIF -->
		</div>
		
		<div id="right">
			<!-- IF {PHP.usr.id} > 0 -->
			<h3 style="color:#000">{PHP.themelang.header.logged} {PHP.usr.name}</h3>
			<h3><a href="users.php?m=details&amp;id={PHP.usr.id}&amp;u={PHP.usr.name}">{PHP.L.View} {PHP.L.Profile}</a></h3>
			<h3><a href="users.php?m=profile">{PHP.L.Update} {PHP.L.Profile}</a></h3>
			<h3><a href="pm.php">{PHP.L.Private_Messages}</a></h3>
			<h3><a href="pfs.php">{PHP.L.PFS}</a></h3>
			<!-- ENDIF -->	<!-- IF {PHP.usr.id} == 0 -->
			<h3><a href="users.php?m=auth">{PHP.themelang.users.login}</a></h3>	<!-- ENDIF -->
			<h3><span style="background-color:#94af66; color:#fff">{PHP.L.Users}</span></h3>
			<div class="padding15 admin nou scrabble" style="padding-bottom:0">
				{USERS_TOP_FILTERS_OTHERS}<a href="users.php"><strong>{PHP.L.All}</strong></a><br />.....<br />
				{PHP.themelang.users.usersperpage}: <strong>{USERS_TOP_MAXPERPAGE}</strong><br />
				{PHP.themelang.users.usersinthissection} (<em>{PHP.f}</em>): <strong>{USERS_TOP_TOTALUSERS}</strong>
				<!-- IF {USERS_TOP_PAGNAV} -->
				<div class="paging">{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}</div>
				<!-- ENDIF -->
			</div>
			&nbsp;
		</div>
	</div>
</div>
<br class="clear" />

<!-- END: MAIN -->
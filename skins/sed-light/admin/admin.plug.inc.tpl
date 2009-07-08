<!-- BEGIN: PLUG -->
		<div id="{ADMIN_PLUG_AJAX_OPENDIVID}">
<!-- IF {PHP.if_conf_url} -->
			<ul>
				<li><a href="{ADMIN_PLUG_CONFIG_URL}">{PHP.L.Configuration} : <img src="images/admin/config.gif" alt="" /></a></li>
			</ul>
<!-- ENDIF -->
<!-- IF {PHP.is_adminwarnings} -->
			<div class="error">{ADMIN_PLUG_ADMINWARNINGS}</div>
<!-- ENDIF -->
<!-- BEGIN: DETAILS -->
				<h4>{PHP.L.Plugin} {ADMIN_PLUG_NAME} :</h4>
				<table class="cells">
				<tr>
					<td>{PHP.L.Code}:</td>
					<td>{ADMIN_PLUG_CODE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Description}:</td>
					<td>{ADMIN_PLUG_DESCRIPTION}</td>
				</tr>
				<tr>
					<td>{PHP.L.Version}:</td>
					<td>{ADMIN_PLUG_VERSION}</td>
				</tr>
				<tr>
					<td>{PHP.L.Date}:</td>
					<td>{ADMIN_PLUG_DATE}</td>
				</tr>
				<tr>
					<td>{PHP.L.Configuration}:</td>
<!-- IF {ADMIN_PLUG_TOTALCONFIG} > 0 -->
					<td><a href="{ADMIN_PLUG_CONFIG_URL}"><img src="images/admin/config.gif" alt="" /> ({ADMIN_PLUG_TOTALCONFIG}) {PHP.L.Edit}</a></td>
<!-- ELSE -->
					<td>{PHP.L.None}</td>
<!-- ENDIF -->
				</tr>
				<tr>
					<td>{PHP.L.Rights}:</td>
					<td><a href="{ADMIN_PLUG_RIGHTS}"><img src="images/admin/rights2.gif" alt="" /></a></td>
				</tr>
				<tr>
					<td>{PHP.L.adm_defauth_guests}:</td>
					<td>{ADMIN_PLUG_ADMRIGHTS_AUTH_GUESTS} ({ADMIN_PLUG_AUTH_GUESTS})</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_deflock_guests}:</td>
					<td>{ADMIN_PLUG_ADMRIGHTS_LOCK_GUESTS} ({ADMIN_PLUG_LOCK_GUESTS})</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_defauth_members}:</td>
					<td>{ADMIN_PLUG_ADMRIGHTS_AUTH_MEMBERS} ({ADMIN_PLUG_AUTH_MEMBERS})</td>
				</tr>
				<tr>
					<td>{PHP.L.adm_deflock_members}:</td>
					<td>{ADMIN_PLUG_ADMRIGHTS_LOCK_MEMBERS} ({ADMIN_PLUG_LOCK_MEMBERS})</td>
				</tr>
				<tr>
					<td>{PHP.L.Author}:</td>
					<td>{ADMIN_PLUG_AUTHOR}</td>
				</tr>
				<tr>
					<td>{PHP.L.Copyright}:</td>
					<td>{ADMIN_PLUG_COPYRIGHT}</td>
				</tr>
				<tr>
					<td>{PHP.L.Notes}:</td>
					<td>{ADMIN_PLUG_NOTES}</td>
				</tr>
				</table>
				<h4>{PHP.L.Options} :</h4>
				<table class="cells">
				<tr>
					<td><a href="{ADMIN_PLUG_INSTALL_URL}"{ADMIN_PLUG_INSTALL_URL_AJAX}>{PHP.L.adm_opt_installall}</a></td>
					<td>{PHP.L.adm_opt_installall_explain}
<!-- IF (!{PHP.isinstalled} && {PHP.totalconfig}) -->
						<br />
						<small><a href="{ADMIN_PLUG_INSTALL_KO_URL}"{ADMIN_PLUG_INSTALL_KO_URL_AJAX}>{PHP.L.adm_opt_setoption_warn}</a></small>
<!-- ENDIF -->
					</td>
				</tr>
				<tr>
					<td><a href="{ADMIN_PLUG_UNINSTALL}"{ADMIN_PLUG_UNINSTALL_AJAX}>{PHP.L.adm_opt_uninstallall}</a></td>
					<td>{PHP.L.adm_opt_uninstallall_explain}
<!-- IF ({PHP.isinstalled} && {PHP.totalconfig}) -->
						<br />
						<small><a href="{ADMIN_PLUG_UNINSTALL_KO_URL}"{ADMIN_PLUG_UNINSTALL_KO_URL_AJAX}>{PHP.L.adm_opt_uninstall_warn}</a></small>
<!-- ENDIF -->
					</td>
				</tr>
				<tr>
					<td><a href="{ADMIN_PLUG_PAUSE_URL}"{ADMIN_PLUG_PAUSE_URL_AJAX}>{PHP.L.adm_opt_pauseall}</a></td>
					<td>{PHP.L.adm_opt_pauseall_explain}</td>
				</tr>
				<tr>
					<td><a href="{ADMIN_PLUG_UNPAUSE_URL}"{ADMIN_PLUG_UNPAUSE_URL_AJAX}>{PHP.L.adm_opt_unpauseall}</a></td>
					<td>{PHP.L.adm_opt_unpauseall_explain}</td>
				</tr>
				</table>
				<h4>{PHP.L.Parts} :</h4>
				<table class="cells">
				<tr>
					<td class="coltop" colspan="2">{PHP.L.adm_part}</td>
					<td class="coltop">{PHP.L.File}</td>
					<td class="coltop">{PHP.L.Hooks}</td>
					<td class="coltop">{PHP.L.Order}</td>
					<td class="coltop">{PHP.L.Status}</td>
					<td class="coltop">{PHP.L.Action}</td>
				</tr>
<!-- BEGIN: ROW_ERROR_PART -->
				<tr>
					<td colspan="3">{ADMIN_PLUG_DETAILS_ROW_X}</td>
					<td colspan="5">{ADMIN_PLUG_DETAILS_ROW_ERROR}</td>
				</tr>
<!-- END: ROW_ERROR_PART -->
<!-- BEGIN: ROW_PART -->
				<tr>
					<td style="width:32px;">#{ADMIN_PLUG_DETAILS_ROW_I_1}</td>
					<td>{ADMIN_PLUG_DETAILS_ROW_PART}</td>
					<td>{ADMIN_PLUG_DETAILS_ROW_FILE}.php</td>
					<td>{ADMIN_PLUG_DETAILS_ROW_HOOKS}</td>
					<td style="text-align:center;">{ADMIN_PLUG_DETAILS_ROW_ORDER}</td>
					<td style="text-align:center;">{ADMIN_PLUG_DETAILS_ROW_STATUS}</td>
					<td style="text-align:center;">
<!-- IF {PHP.info_file.Status} == 3 -->
						-
<!-- ENDIF -->
<!-- IF ({PHP.info_file.Status} != 3 && {PHP.row.pl_active} == 1) -->
						<a href="{ADMIN_PLUG_DETAILS_ROW_PAUSEPART_URL}"{ADMIN_PLUG_DETAILS_ROW_PAUSEPART_URL_AJAX}>Пауза</a>
<!-- ENDIF -->
<!-- IF ({PHP.info_file.Status} != 3 && {PHP.row.pl_active} == 0) -->
						<a href="{ADMIN_PLUG_DETAILS_ROW_UNPAUSEPART_URL}"{ADMIN_PLUG_DETAILS_ROW_UNPAUSEPART_URL_AJAX}>Возобновить</a>
<!-- ENDIF -->
					</td>
				</tr>
<!-- ENDIF -->
<!-- END: ROW_PART -->
				</table>
				<h4>{PHP.L.Tags} :</h4>
				<table class="cells">
				<tr>
					<td class="coltop" colspan="2">{PHP.L.Part}</td>
					<td class="coltop">{PHP.L.Files} / {PHP.L.Tags}</td>
				</tr>
<!-- BEGIN: ROW_ERROR_TAGS -->
				<tr>
					<td style="width:32px;">#{ADMIN_PLUG_DETAILS_ROW_I_1}</td>
					<td>{ADMIN_PLUG_DETAILS_ROW_PART}</td>
					<td>{PHP.L.None}</td>
				</tr>
<!-- END: ROW_ERROR_TAGS -->
<!-- BEGIN: ROW_TAGS -->
				<tr>
					<td style="width:32px;">#{ADMIN_PLUG_DETAILS_ROW_I_1}</td>
					<td>{ADMIN_PLUG_DETAILS_ROW_PART}</td>
					<td>{ADMIN_PLUG_DETAILS_ROW_LISTTAGS}</td>
				</tr>
<!-- END: ROW_TAGS -->
				</table>
<!-- END: DETAILS -->
<!-- BEGIN: DEFAULT -->
				<h4>{PHP.L.Plugins} ({ADMIN_PLUG_CNT_EXTP}) :</h4>
				<table class="cells">
				<tr>
					<td class="coltop">{PHP.L.Plugins} {PHP.L.adm_clicktoedit}</td>
					<td class="coltop">{PHP.L.Code}</td>
					<td class="coltop">{PHP.L.Configuration}</td>
					<td class="coltop">{PHP.L.Parts}</td>
					<td class="coltop">{PHP.L.Status}</td>
					<td class="coltop" style="width:80px;">{PHP.L.Rights}</td>
					<td class="coltop" style="width:64px;">{PHP.L.Open}</td>
				</tr>
<!-- BEGIN: ROW -->
<!-- BEGIN: ROW_ERROR_PLUG -->
				<tr>
					<td>{ADMIN_PLUG_X_ERR}</td>
					<td colspan="7">{ADMIN_PLUG_ERROR_MSG}</td>
				</tr>
<!-- END: ROW_ERROR_PLUG -->
				<tr>
					<td>
						<a href="{ADMIN_PLUG_DETAILS_URL}">
<!-- IF {PHP.ifthistools} -->
						<img src="images/admin/tools.gif" alt="" />
<!-- ELSE -->
						<img src="images/admin/plug.gif" alt="" />
<!-- ENDIF -->
						{ADMIN_PLUG_NAME}</a>
					</td>
				 	<td>{ADMIN_PLUG_CODE_X}</td>
					<td style="text-align:center;">
<!-- IF {PHP.ent_code} > 0 -->
						<a href="{ADMIN_PLUG_EDIT_URL}"><img src="images/admin/config.gif" alt="" /></a>
<!-- ENDIF -->
						&nbsp;
					</td>
					<td style="text-align:center;">{ADMIN_PLUG_PARTSCOUNT}</td>
					<td style="text-align:center;">{ADMIN_PLUG_STATUS}</td>
					<td style="text-align:center;"><a href="{ADMIN_PLUG_RIGHTS_URL}"><img src="images/admin/rights2.gif" alt="" /></a></td>
					<td style="text-align:center;">
<!-- IF {PHP.ifthistools} -->
						<a href="{ADMIN_PLUG_JUMPTO_URL_TOOLS}"><img src="images/admin/jumpto.gif" alt="" /></a>
<!-- ENDIF -->
<!-- IF (!{PHP.ifthistools} && {PHP.if_plg_standalone}) -->
						<a href="{ADMIN_PLUG_JUMPTO_URL}"><img src="images/admin/jumpto.gif" alt="" /></a>
<!-- ENDIF -->
						&nbsp;
					</td>
				</tr>
<!-- END: ROW -->
<!-- BEGIN: ROW_ERROR -->
				<tr>
					<td>plugins/{ADMIN_PLUG_X}</td>
					<td colspan="7">Ошибка: Отсутствует setup файл !</td>
				</tr>
<!-- END: ROW_ERROR -->
				</table>
				<h4>{PHP.L.Hooks} ({ADMIN_PLUG_CNT_HOOK}) :</h4>
				<table class="cells">
				<tr>
					<td class="coltop">{PHP.L.Hooks}</td>
					<td class="coltop">{PHP.L.Plugin}</td>
					<td class="coltop" style="text-align:center;">{PHP.L.Order}</td>
					<td class="coltop" style="text-align:center;">{PHP.L.Active}</td>
				</tr>
<!-- BEGIN: HOOKS -->
				<tr>
					<td>{ADMIN_PLUG_HOOK}</td>
					<td>{ADMIN_PLUG_CODE}</td>
					<td style="text-align:center;">{ADMIN_PLUG_ORDER}</td>
					<td style="text-align:center;">{ADMIN_PLUG_ACTIVE}</td>
				</tr>
<!-- END: HOOKS -->
				</table>
<!-- END: DEFAULT -->
<!-- BEGIN: EDIT -->
<!-- BEGIN: INSTALL -->
				Deleting old installation of this plugin ...
				Found: {ADMIN_PLUG_EDIT_AFFECTEDROWS1}<br />
<!-- IF !{PHP.ko} -->
				Deleting old configuration entries ...
				Found: {ADMIN_PLUG_EDIT_AFFECTEDROWS2}<br />
<!-- ENDIF -->
				Looking for the setup file ...
<!-- IF file_exists({PHP.extplugin_info}) -->
				Found: 1<br />
				Looking for parts ...<br />
<!-- BEGIN: ROW_PARTS_FOUND -->
				- Found: {ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_FOUND_F}<br />
<!-- END: ROW_PARTS_FOUND -->
				Installing the parts ...<br />
<!-- BEGIN: ROW_PARTS_INSTALLING -->
				- Part: {ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_INSTALLING_X} ... {ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_INSTALLING_MSG}<br />
<!-- END: ROW_PARTS_INSTALLING -->
				Looking for configuration entries in the setup file ...
<!-- BEGIN: ROW_PARTS_CFG -->
				Found {ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_CFG_TOTALCONFIG}<br/>
<!-- BEGIN: ROW_PARTS_CFG_ENTRY -->
				- Entry #{ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_CFG_J} {ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_CFG_I} ({ADMIN_PLUG_EDIT_INSTALL_ROW_PARTS_CFG_LINE}) Installed<br />
<!-- END: ROW_PARTS_CFG_ENTRY -->
<!-- END: ROW_PARTS_CFG -->
<!-- BEGIN: ROW_PARTS_CFG_ERROR -->
				None found<br />
<!-- END: ROW_PARTS_CFG_ERROR -->
<!-- ELSE -->
				Not found ! Installation failed !<br />
<!-- ENDIF -->
<!-- IF !{PHP.ko} -->
				Deleting any old rights about this plugin ...
				Found: {ADMIN_PLUG_EDIT_AFFECTEDROWS3}<br />
<!-- ENDIF -->
				Adding the rights for the groups of users ...<br />
<!-- BEGIN: ROW_RIGHTS -->
				- Group #{ADMIN_PLUG_EDIT_INSTALL_ROW_RIGHTS_ID}, {ADMIN_PLUG_EDIT_INSTALL_ROW_RIGHTS_TITLE} : Auth={ADMIN_PLUG_EDIT_INSTALL_ROW_RIGHTS_AUTH} / Lock={ADMIN_PLUG_EDIT_INSTALL_ROW_RIGHTS_LOCK}{ADMIN_PLUG_EDIT_INSTALL_ROW_RIGHTS_COMMENT}<br />
<!-- END: ROW_RIGHTS -->
				Resetting the auth column for all the users ...
				Found: {ADMIN_PLUG_EDIT_AFFECTEDROWS4}<br />
				Running on-install part of the setup script ...
				{ADMIN_PLUG_EDIT_EXTPLUGIN_INFO}<br />
				Done!<br />
				<span>{ADMIN_PLUG_EDIT_LOG}&nbsp;</span>
				<a href="{ADMIN_PLUG_EDIT_CONTINUE_URL}"{ADMIN_PLUG_EDIT_CONTINUE_URL_AJAX}>Click here to continue ...</a>
<!-- END: INSTALL -->
<!-- BEGIN: UNINSTALL -->
				Deleting old installation of this plugin ...
				Found:{ADMIN_PLUG_EDIT_AFFECTEDROWS1}<br />
<!-- IF !{PHP.ko} -->
					Deleting old configuration entries ...
					Found:{ADMIN_PLUG_EDIT_AFFECTEDROWS2}<br />
					Deleting any old rights about this plugin ...
					Found:{ADMIN_PLUG_EDIT_AFFECTEDROWS3}<br />
<!-- ENDIF -->
				Resetting the auth column for all the users ...
				Found: {ADMIN_PLUG_EDIT_AFFECTEDROWS4}<br />
				Running on-install part of the setup script ...
				{ADMIN_PLUG_EDIT_EXTPLUGIN_INFO}<br />
				Done!<br />
				<span>{ADMIN_PLUG_EDIT_LOG}&nbsp;</span>
				<a href="{ADMIN_PLUG_EDIT_CONTINUE_URL}"{ADMIN_PLUG_EDIT_CONTINUE_URL_AJAX}>Click here to continue ...</a>
<!-- END: UNINSTALL -->
<!-- END: EDIT -->
		</div>
<!-- END: PLUG -->
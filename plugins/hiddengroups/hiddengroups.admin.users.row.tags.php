<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.users.row.tags
[END_COT_EXT]
==================== */

/**
 * Hidden groups
 *
 * @package Cotonti
 * @version 0.9.0
 * @author Koradhil, Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2008-2010
 * @license BSD
 */

(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

$sql2 = $db->query("SELECT grp_hidden FROM $db_groups WHERE grp_id = ".(int)$row['grp_id']);
if($res = $sql2->fetch())
{
	$t->assign('ADMIN_USERS_ROW_GRP_HIDDEN', $cot_yesno[$res['grp_hidden']]);
}

?>
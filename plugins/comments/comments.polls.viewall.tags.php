<?php
/* ====================
[BEGIN_SED_EXTPLUGIN]
Code=comments
Part=polls.viewall.tags
File=comments.polls.viewall.tags
Hooks=polls.viewall.tags
Tags=polls.tpl:{POLLS_COMMENTS}
Order=10
[END_SED_EXTPLUGIN]
==================== */

/**
 * Comments system for Cotonti
 *
 * @package Cotonti
 * @version 0.7.0
 * @author Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2008-2010
 * @license BSD
 */

defined('SED_CODE') or die('Wrong URL');

require_once sed_langfile('comments');
require_once sed_incfile('config', 'comments', true);
require_once sed_incfile('functions', 'comments', true);
require_once sed_incfile('resources', 'comments', true);

$t->assign(array(
	'POLLS_COMMENTS' => sed_comments_link('polls', 'id='.$row['poll_id'], 'polls', $row['poll_id'])
));

?>
<?php
//  ------------------------------------------------------------------------ //
// ���Ҳե� tad �s�@
// ------------------------------------------------------------------------- //

/*-----------�ޤJ�ɮװ�--------------*/
include "header.php";
include "post_function.php";
$xoopsOption['template_main'] = "tadbook3_post.html";
include_once XOOPS_ROOT_PATH."/header.php";
/*-----------function��--------------*/



/*-----------����ʧ@�P�_��----------*/
$_REQUEST['op']=(empty($_REQUEST['op']))?"":$_REQUEST['op'];
$tbsn = (!isset($_REQUEST['tbsn']))? "":intval($_REQUEST['tbsn']);
$tbdsn = (!isset($_REQUEST['tbdsn']))? "":intval($_REQUEST['tbdsn']);

$xoopsTpl->assign( "toolbar" , toolbar_bootstrap($interface_menu)) ;
$xoopsTpl->assign( "bootstrap" , get_bootstrap()) ;
$xoopsTpl->assign( "jquery" , get_jquery(true)) ;
$xoopsTpl->assign( "isAdmin" , $isAdmin) ;

switch($_REQUEST['op']){
	//��s���
	case "update_tad_book3_docs";
	update_tad_book3_docs($tbdsn);
	header("location: page.php?tbdsn={$tbdsn}");
	break;

	//�s�W���
	case "insert_tad_book3_docs":
	$tbdsn=insert_tad_book3_docs();
	header("location: page.php?tbdsn={$tbdsn}");
	break;

	//��J���
	case "tad_book3_docs_form";
	tad_book3_docs_form($tbdsn,$tbsn);
	break;

	//�R�����
	case "delete_tad_book3_docs";
	delete_tad_book3_docs($tbdsn);
	header("location: {$_SERVER['PHP_SELF']}");
	break;

	//�w�]�ʧ@
	default:
	tad_book3_docs_form($tbdsn,$tbsn);
	break;
}

/*-----------�q�X���G��--------------*/
include_once XOOPS_ROOT_PATH.'/footer.php';

?>

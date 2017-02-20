function bindInputEventForNumberText( objArray ) {
	$.each( objArray, function( i, n ) {
		n.bind( 'input', function( e ) {
			var $t = $( this ) ;
			$t.val( $t.val().replace( /[\D]/g, '' ) ) ;
		} ) ;
	} ) ;
}

/*检查是否符合银行卡号格式*/
function check_account_number_format(account_number)
{
    return /^[\d]{12,19}$/.test(account_number);
}


function bindInputEventForFloatText(objArray) {
	$.each(objArray, function(k, v) {
		$(v).bind('input', function(e) {
            var i = getCursortPosition(v);
			var $t = $( this ) ;
			$t.val( $t.val().replace(/[^\d.]/g, '')) ;
			$t.val( $t.val().replace(/^\./g, '')) ;
			$t.val( $t.val().replace(/\.{2,}/g, '.')) ;
			$t.val( $t.val().replace('.', '$#$').replace(/\./g, '').replace('$#$', '.')) ;
			$t.val( $t.val().replace(/^(\-)*(\d+)\.(\d\d).*$/, '$1$2.$3')) ;
            setCaretPosition(v, i);
		}) ;
	}) ;
}


function getCursortPosition (ctrl) {//获取光标位置函数
    var CaretPos = 0;	// IE Support
    if (document.selection) {
        ctrl.focus ();
        var Sel = document.selection.createRange ();
        Sel.moveStart ('character', -ctrl.value.length);
        CaretPos = Sel.text.length;
    }
    // Firefox support
    else if (ctrl.hasOwnProperty(0) && typeof(ctrl[0].selectionStart) ==='number')
        CaretPos = ctrl[0].selectionStart;
    else if(typeof(ctrl.selectionStart) ==='number')
        CaretPos = ctrl.selectionStart;
    return (CaretPos);
}

function setCaretPosition(ctrl, pos){//设置光标位置函数
    if(ctrl.setSelectionRange)
    {
        ctrl.focus();
        ctrl.setSelectionRange(pos,pos);
    }else if(ctrl.hasOwnProperty(0) && ctrl[0].setSelectionRange){
        ctrl.focus();
        ctrl[0].setSelectionRange(pos,pos);
    }
    else if (ctrl.createTextRange) {
        var range = ctrl.createTextRange();
        range.collapse(true);
        range.moveEnd('character', pos);
        range.moveStart('character', pos);
        range.select();
    }
}
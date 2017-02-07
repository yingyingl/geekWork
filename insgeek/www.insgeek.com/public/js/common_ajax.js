/*!
* InsGeek v2.2.5
* Date: 2016/05/06
* http://www.insgeek.com
*
* Copyright 2015, 2016 InsGeek.
* Released under the MIT license.
* http://www.insgeek.com/license
*
*/

var PRD = 0 ;
var DBG = 1 ;

/*
 * 调用 AJAX 的通用方法
 * @param	data				提交的数据，JSON 格式
 * @param	mode				执行模式：0 - 普通模式，1 - 调试模式
 * @param	success_function	调用成功后执行的方法
 * @param	url					调用的URL
 * @param	option				调用参数
 *
 * @return	NONE
 */
function callAjax( data, mode, success_function, url, option ) {

	// 获取调用参数
	var opt = null ;

	if ( option === undefined || option === null ) {
		opt = {} ;
	} else {
		opt = option ;
	}

	// 设置调用参数
	var caller = opt[ 'caller' ] == undefined ? '' : ' - ' + opt[ 'caller' ] ;

	$.ajax( {
		async : opt[ 'async' ] == undefined ? false : opt[ 'async' ],
		cache : opt[ 'cache' ] == undefined ? false : opt[ 'cache' ],
		data : data,
		dataType : opt[ 'data_type' ] == undefined ? 'json' : opt[ 'data_type' ],
		error : function ( XMLHttpRequest, textStatus, errorThrown ) {
			if ( mode == DBG ) {
				alert( '[error]' + caller
					+ '\nerrorThrown : ' + errorThrown
					+ '\ntextStatus : ' + textStatus
					+ '\nXHR.readyState : ' + XMLHttpRequest.readyState
					+ '\nXHR.status : ' + XMLHttpRequest.status ) ;
				alert( 'XHR.resonseText : ' + XMLHttpRequest.responseText ) ;
			} else {
				//alert( '[error]' + caller + '\ntextStatus : ' + textStatus ) ;
				alert( '网络异常，请确保您的网络畅通并稍后再试' ) ;
			}
		},
		success : function ( response ) {
			if ( mode == DBG ) {
				alert( '[success]' + caller
					+ '\nresponse : ' + JSON.stringify( response ) ) ;
			}

			success_function( response ) ;
		},
		type : opt[ 'type' ] == undefined ? 'post' : opt[ 'type' ],
		url : url + Math.random()
	} ) ;
}

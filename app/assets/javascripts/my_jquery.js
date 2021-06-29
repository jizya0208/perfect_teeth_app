// 繰り返し文で書けないかな？
// $(function() {
// 		for (let i = 1; i < 8; i++){
// 		$('input[name= a${i}]').on('change', function() {
// 		var $check = $(this).parents('.q${i}');
// 		$('.q${i').removeClass('ck');
// 		if ($(this).prop('checked')) {
// 			$check.addClass('ck');
// 			}
// 		});
// 		}
// 	});

	
	// ==========================================================================

$(function() {
	$(document).on('turbolinks:load', function() {
	$('td:contains("gud")').parent("tr").addClass("gud");
	$('td:contains("!!")').parent("tr").addClass("bad");
	});
	
	$('input[name="a1"]').on('change', function() {
		var $check = $(this).parents('.q1');
		$('.q1').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});

	$('input[name="a2"]').on('change', function() {
		var $check = $(this).parents('.q2');
		$('.q2').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});
	
	$('input[name="a3"]').on('change', function() {
		var $check = $(this).parents('.q3');
		$('.q3').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});	
	
	$('input[name="a4"]').on('change', function() {
		var $check = $(this).parents('.q4');
		$('.q4').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});	
	
	$('input[name="a5"]').on('change', function() {
		var $check = $(this).parents('.q5');
		$('.q5').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});	

	$('input[name="a6"]').on('change', function() {
		var $check = $(this).parents('.q6');
		$('.q6').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});	
	
	$('input[name="a7"]').on('change', function() {
		var $check = $(this).parents('.q7');
		$('.q7').removeClass('ck');
		if ($(this).prop('checked')) {
			$check.addClass('ck');
		}
	});	
	
} );
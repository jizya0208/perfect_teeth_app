$(function() {
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
} );
/*
	TXT by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

(function($) {

	var	$window = $(window),
		$body = $('body'),
		$nav = $('#nav');

	// Breakpoints.
		breakpoints({
			xlarge:  [ '1281px',  '1680px' ],
			large:   [ '981px',   '1280px' ],
			medium:  [ '737px',   '980px'  ],
			small:   [ '361px',   '736px'  ],
			xsmall:  [ null,      '360px'  ]
		});

	// Play initial animations on page load.
		$window.on('load', function() {
			window.setTimeout(function() {
				$body.removeClass('is-preload');
			}, 100);
		});

	// Dropdowns.
		$('#nav > ul').dropotron({
			mode: 'fade',
			noOpenerFade: true,
			speed: 300,
			alignment: 'center'
		});

	// Scrolly
		$('.scrolly').scrolly({
			speed: 1000,
			offset: function() { return $nav.height() - 5; }
		});

	// Nav.

		// Title Bar.
			$(
				'<div id="titleBar">' +
					'<a href="#navPanel" class="toggle"></a>' +
					'<span class="title">' + $('#logo').html() + '</span>' +
				'</div>'
			)
				.appendTo($body);

		// Panel.
			$(
				'<div id="navPanel">' +
					'<nav>' +
						$('#nav').navList() +
					'</nav>' +
				'</div>'
			)
				.appendTo($body)
				.panel({
					delay: 500,
					hideOnClick: true,
					hideOnSwipe: true,
					resetScroll: true,
					resetForms: true,
					side: 'left',
					target: $body,
					visibleClass: 'navPanel-visible'
				});
	
	
				
	$('.slider').bxSlider({
					/*
					mode: 'horizontal',// 가로 방향 수평 슬라이드
					speed: 500,        // 이동 속도를 설정
					pager: false,      // 현재 위치 페이징 표시 여부 설정
					moveSlides: 1,     // 슬라이드 이동시 개수
					slideWidth: 100,   // 슬라이드 너비
					minSlides: 4,      // 최소 노출 개수
					maxSlides: 4,      // 최대 노출 개수
					slideMargin: 5,    // 슬라이드간의 간격
					auto: true,        // 자동 실행 여부
					autoHover: true,   // 마우스 호버시 정지 여부
					controls: false    // 이전 다음 버튼 노출 여부
					*/
				});

})(jQuery);
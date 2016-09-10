<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>right.jsp</title>
<link href="assets/css/bootstrap.css" rel="stylesheet">
<link href="assets/css/main.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
<link href="assets/css/prism.css" rel="stylesheet" />
<link href="assets/css/jquery.mCustomScrollbar.css" rel="stylesheet" type="text/css" />

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body bgcolor="#03A8F6">
<div class="white">
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-push-6 centered">
			<div id="nt-example2-container">
				<ul id="nt-example2">
					<li data-infos="7月7日，杰拉德（中）、俱乐部主席克里斯·格雷（左）和主帅阿里纳出席新闻发布会。当日，美国洛杉矶银河足球俱乐部为刚刚加盟的英格兰球星杰拉德举行新闻发布会。这位前利物浦队队长表示，在个人荣誉中增加更多冠军，是他加盟银河队的初衷，而不是沐浴在加利福尼亚的阳光中，拿到职业生涯最后一张支票。新华社/路透 ">
						<i class="fa fa-fw fa-play state"></i>
						<span class="hour">7月7日</span> 杰拉德出席新闻发布会
					</li>
					<li data-infos="从《关于2014年度广东扶贫济困红棉杯和广东扶贫济困优秀团队（项目）获得者的通报》获悉，我院获得2014年度广东扶贫济困红棉杯铜杯。为弘扬善举，广东省扶贫开发领导小组对我院董事长梁冠军先生在2014年度广东扶贫济困日活动中奉献爱心、慷慨解囊的行为给予肯定，特授予我院广东扶贫济困红棉杯铜杯并颁发证书。">
						<i class="fa fa-fw fa-play state"></i>
						<span class="hour">7月8号</span>华软获2014年度广东扶贫济困红棉杯铜杯
					</li>
					<li data-infos="从团省委获悉，近日，广东省今年总计2000万元的“攀登计划”广东大学生科技创新培育专项资金已正式下发到各高校。据了解，为助力大学生创业，团省委在今年初正式实施了“攀登计划”广东大学生科技创新能力提升行动，从广东省财政中每年新增安排2000万元专项资金用于资助培育省内高校1000个大学生科技创新团队开展发明制作等科研实践。
">
						<i class="fa fa-fw fa-play state"></i>
						<span class="hour">7月7号</span>我院“攀登计划”创新培育专项资金夺全省民办高校头筹
					</li>
					
					
					<li data-infos="日前，2015移动互联网创新与创业高峰论坛在华软软件学院举行。广州大学华软软件学院常务副院长、创新创业学院院长迟云平说：“创新创业学院将为学生提供校企校际合作平台、提供创新创业政策咨询服务、开展就业创业指导与服务、对学生创新创业项目进行择优孵化或给予支持，并组织力量研究编写大学生创新创业教育教材。">
						<i class="fa fa-fw fa-play state"></i>
						<span class="hour">7月6日</span> 【南方都市报】广大华软成立创新创业学院
					</li>
				</ul>
				<div id="nt-example2-infos-container">
					<div id="nt-example2-infos-triangle"></div>
					<div id="nt-example2-infos" class="row">
						<div class="col-xs-4 centered">
							<div class="infos-hour">
								08:12
							</div>
							<i class="fa fa-arrow-left" id="nt-example2-prev"></i>
							<i class="fa fa-arrow-right" id="nt-example2-next"></i>
						</div>
						<div class="col-xs-8">
							<div class="infos-text">Cras sagittis nulla sit amet feugiat pulvinar. Fusce scelerisque aliquet purus, sit amet rutrum augue euismod ut. Aliquam erat volutpat. Integer convallis, ligula non bibendum dictum, ante lectus fringilla nunc, at euismod neque enim sit amet ante. In risus velit, porttitor blandit magna vel, adipiscing semper libero.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-6 col-md-pull-6 centered">
			<h2>公告栏</h2>
<pre><code class="language-javascript example-code">IT公司清明节放假通知
　公司所属各单位部门：
　　2015年春节将至，为使公司和员工共同度过一个欢乐、祥和、平安的新春佳节，切实做好节日期间的安全工作，现将有关事宜通知如下：
　　一、放假时间：自2015年1月26日(农历腊月二十六)至2015年2月6日放假，共12天。2月6日(星期一)上班。。
　　二、认真做好安全检查工作。对所属办公室进行以防火、防盗为主要内容的安全大检查，确保重点部位如仓库、办公用电设备、机房等场所的安全。各单位要认真清理一下文件资料，将重要文件保管好，贵重物品放在安全处，防止被盗。财务部门要保证保险柜等重要设施的安全稳固。保证门窗的关闭和落锁，并由该部门负责人落实到位。
　　三、节假日期间为事故多发期，在节日期间返乡的员工要注意旅途人身、钱物安全，假期结束后请按时返回公司。
　　公司祝全体员工新春愉快，万事如意!
</code></pre>
		</div>
	</div>
</div>
</div>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="assets/js/chart.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/prism.js"></script>
<script src="assets/js/jquery.mCustomScrollbar.min.js"></script>
<script src="assets/js/jquery.newsTicker.js"></script>
<script>
	$('a[href*=#]').click(function(e) {
		var href = $.attr(this, 'href');
		if (href != "#") {
			$('html, body').animate({
				scrollTop: $(href).offset().top - 81
			}, 500);
		}
		else {
			$('html, body').animate({
				scrollTop: 0
			}, 500);
		}
		return false;
	});

	$(window).load(function(){
		$('code.language-javascript').mCustomScrollbar();
	});
	var nt_title = $('#nt-title').newsTicker({
		row_height: 40,
		max_rows: 1,
		duration: 3000,
		pauseOnHover: 0
	});
	var nt_example1 = $('#nt-example1').newsTicker({
		row_height: 80,
		max_rows: 3,
		duration: 4000,
		prevButton: $('#nt-example1-prev'),
		nextButton: $('#nt-example1-next')
	});
	var nt_example2 = $('#nt-example2').newsTicker({
		row_height: 60,
		max_rows: 1,
		speed: 300,
		duration: 6000,
		prevButton: $('#nt-example2-prev'),
		nextButton: $('#nt-example2-next'),
		hasMoved: function() {
			$('#nt-example2-infos-container').fadeOut(200, function(){
				$('#nt-example2-infos .infos-hour').text($('#nt-example2 li:first span').text());
				$('#nt-example2-infos .infos-text').text($('#nt-example2 li:first').data('infos'));
				$(this).fadeIn(400);
			});
		},
		pause: function() {
			$('#nt-example2 li i').removeClass('fa-play').addClass('fa-pause');
		},
		unpause: function() {
			$('#nt-example2 li i').removeClass('fa-pause').addClass('fa-play');
		}
	});
	$('#nt-example2-infos').hover(function() {
		nt_example2.newsTicker('pause');
	}, function() {
		nt_example2.newsTicker('unpause');
	});
	var state = 'stopped';
	var speed;
	var add;
	var nt_example3 = $('#nt-example3').newsTicker({
		row_height: 80,
		max_rows: 1,
		duration: 0,
		speed: 10,
		autostart: 0,
		pauseOnHover: 0,
		hasMoved: function() {
			if (speed > 700) {
				$('#nt-example3').newsTicker("stop");
				console.log('stop')
				$('#nt-example3-button').text("RESULT: " + $('#nt-example3 li:first').text().toUpperCase());
				setTimeout(function() {
					$('#nt-example3-button').text("START");
					state = 'stopped';
				},2500);
				
			}
			else if (state == 'stopping') {
				add = add * 1.4;
				speed = speed + add;
				console.log(speed)
				$('#nt-example3').newsTicker('updateOption', "duration", speed + 25);
				$('#nt-example3').newsTicker('updateOption', "speed", speed);
			}
		}
	});
	
	$('#nt-example3-button').click(function(){
		if (state == 'stopped') {
			state = 'turning';
			speed = 1;
			add = 1;
			$('#nt-example3').newsTicker('updateOption', "duration", 0);
			$('#nt-example3').newsTicker('updateOption', "speed", speed);
			nt_example3.newsTicker('start');
			$(this).text("STOP");
		}
		else if (state == 'turning') {
			state = 'stopping';
			$(this).text("WAITING...");
		}
	});
</script>
</body>
</html>

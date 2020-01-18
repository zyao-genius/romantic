$(document).ready(function () {	
	  
	 //nav 		
    var obj=null;
    var As=document.getElementById('starlist').getElementsByTagName('a');
    obj = As[0];
    for(i=1;i<As.length;i++){if(window.location.href.indexOf(As[i].href)>=0)
    obj=As[i];}
    obj.id='selected';
	 
     //nav
	$("#mnavh").click(function(){
    $("#starlist").toggle();
	$("#mnavh").toggleClass("open");
	});
	
    //search	
	$(".searchico").click(function(){
	$(".search").toggleClass("open");
	});
	
	 //searchclose	
    $(".searchclose").click(function(){
	$(".search").removeClass("open");
	});	
	
	//banner
    $('#banner').easyFader();
		
   //nav menu   
   $(".menu").click(function(event) {
   $(this).children('.sub').slideToggle();
   });
   
   //tab
   $('.tab_buttons li').click(function(){
   $(this).addClass('newscurrent').siblings().removeClass('newscurrent');
   $('.newstab>div:eq('+$(this).index()+')').show().siblings().hide();
    });
  
  
  //toolbar	
	$(".toolbar-open").click(function(){
	$(".toolbar-open").addClass("openviewd");
	$(".toolbar").addClass("guanbi");
	});
	
    $("#guanbi").click(function(){
	$(".toolbar-open").removeClass("openviewd");
	$(".toolbar").removeClass("guanbi");
    $("#toolbar-menu li").removeClass("current");
	});	
  
//toolbar-menu	
     $('#toolbar-menu li').click(function(){
     $(this).addClass('current').siblings().removeClass('current');
    });
  
//endmenu
 $(".endmenu li a").each(function(){
       $this = $(this);
       if($this[0].href==String(window.location)){
        $this.parent().addClass("act");
      }    
  });
		
});
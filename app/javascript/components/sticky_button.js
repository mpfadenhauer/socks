const sticky = () => {
  $(window).scroll(function () {
    if (($(this).scrollTop()+$(window).height())>$('#top').height()){
      $("#btn_fixed").css({ bottom: ($(this).scrollTop()+$(window).height()- $('#top').height())+"px" });
    }else{
      $("#btn_fixed").css({ bottom: '0px' });
    }
  });

}

export { sticky };

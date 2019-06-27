
import "bootstrap";
import { sockcess } from '../components/sweetalert';
sockcess();

import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { filter } from '../components/filter';

filter();


import { sticky } from '../components/sticky_button';

sticky();

  // $(window).scroll(function () {
  //   if (($(this).scrollTop()+$(window).height())>$('#top').height()){
  //     $("#btn_fixed").css({ bottom: ($(this).scrollTop()+$(window).height()- $('#top').height())+"px" });
  //   }else{
  //     $("#btn_fixed").css({ bottom: '0px' });
  //   }
  // });


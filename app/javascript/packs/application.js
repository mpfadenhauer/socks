
import "bootstrap";
import { sockcess } from '../components/sweetalert';
sockcess();

import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { filter } from '../components/filter';

filter();

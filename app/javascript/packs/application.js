import "bootstrap";
import 'plugins/flatpicker';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initLocAutocomplete } from '../plugins/init_loc_autocomplete';
import { clicker } from "../components/checkboxClicker";
import { counter } from "../components/hoursCounter";


clicker();
counter();
initAutocomplete();
initLocAutocomplete();

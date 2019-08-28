import "bootstrap";
import 'plugins/flatpicker'
import { initAutocomplete } from '../plugins/init_autocomplete'
import { clicker } from "../components/checkboxClicker";
import { counter } from "../components/hoursCounter";


clicker();
counter();
initAutocomplete();

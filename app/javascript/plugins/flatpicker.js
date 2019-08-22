import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  disableMobile: true, // makes it work on mobile
  altInput: true, // makes the date look nicer
  enableTime: true  // enables time

})

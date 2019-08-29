// this is for the counter input in the booking_new page
// 1. in the view > bookings > new.html.erb, create 2 buttons for plus and minus
// 2. give it id > "js-minus-hours" and "js-plus-hours"
// 3. create hourCounter.js file in javascript > components
// 4. style it in stylesheet > components > _counter.scss



const addHrsBtn = document.querySelector("#js-plus-hours");
const subHrsBtn = document.querySelector("#js-minus-hours");
const formInput = document.querySelector("#booking_total_duration"); //this is id of the input field


const addHours = (event) => {
  event.preventDefault() // when we use the button the default action is to submit and relaoad, and we want to prevent that
  formInput.value = parseInt(formInput.value) + 1 //parseInt parses a string and returns an integer. this adds +1 on the click of a button
}

const subHours = (event) => {
  event.preventDefault()
  formInput.value = parseInt(formInput.value) - 1 //this subs -1 on the click of a button

}


// we add event listenter > upon click you execute the method
const counter = () => {
  if (addHrsBtn) {
    addHrsBtn.addEventListener("click", addHours);
  };
  if (subHrsBtn) {
    subHrsBtn.addEventListener("click", subHours);
  };
}

export { counter }

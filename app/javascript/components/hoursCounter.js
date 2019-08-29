const addHrsBtn = document.querySelector("#js-plus-hours");
const subHrsBtn = document.querySelector("#js-minus-hours");
const formInput = document.querySelector("#booking_total_duration");
// const currentValie = document ....

const addHours = (event) => {
  event.preventDefault()
  formInput.value = parseInt(formInput.value) + 1
}

  const subHours = (event) => {
    event.preventDefault()
    formInput.value = parseInt(formInput.value) - 1
  }

const counter = () => {
  if (addHrsBtn) {
    addHrsBtn.addEventListener("click", addHours);
  };
  if (subHrsBtn) {
    subHrsBtn.addEventListener("click", subHours);
  };
}



export { counter }

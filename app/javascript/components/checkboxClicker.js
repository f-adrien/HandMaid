 // Click on the label/btn
 // Put an event listener on this label/btn
 // grab the value of the "for"
 // use this value to select the element by id
 // When clicked, click on the hidden checkbox but with javascript
 // toggle active class


const clicker = () => {
  const services = document.querySelectorAll(".service");
  services.forEach(service => {
    service.addEventListener("click", (event) => {
      const input = document.getElementById(event.currentTarget.htmlFor)
      input.checked = !input.checked
      input.click();
      service.classList.toggle("btn-primary")
    })
  })
}

export { clicker }

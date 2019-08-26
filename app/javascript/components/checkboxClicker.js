 // Click on the label/btn
 // Put an event listener on this label/btn
 // grab the value of the "for"
 // use this value to select the element by id
 // When clicked, click on the hidden checkbox but with javascript
 // toggle active class

const cards = document.querySelectorAll(".card-service");
const clicker = () => {
  if (cards) {
    cards.forEach(card => {
      const service = card.querySelector('.service')
      const input = card.getElementsByTagName('input')[0]
      const serviceName = card.getElementsByTagName('p')[0]
      service.addEventListener("click", (event) => {
        input.checked = !input.checked
        input.click();
        // service.classList.toggle("services-icons-checked")
        card.classList.toggle("services-icons-checked")
        serviceName.classList.toggle("service-name")
      })
    })
  }
}

export { clicker }

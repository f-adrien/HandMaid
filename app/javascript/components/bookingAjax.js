const bookingAjax = () => {
  const pendingContainer = document.querySelector(".container-pending")
  const confirmedContainer = document.querySelector(".container-confirmed")
  if (pendingContainer) {
    const pendingCards = pendingContainer.querySelectorAll(".booking-card")
    pendingCards.forEach((card) => {
      const acceptButton = card.querySelector(".booking-accept")
      acceptButton.addEventListener("click", () => {
        card.remove()
        confirmedContainer.addAdjacentHTML("afterBegin", )
      })
    })
  }
}

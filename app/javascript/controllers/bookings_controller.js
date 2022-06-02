import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="bookings"
export default class extends Controller {
  static targets = ["accept_btn", "decline_btn"]

  accept() {
    this.accept_btnTarget.innerText = "Accepted!"
    this.decline_btnTarget.innerText = "Decline"

    fetch(`/dogs/${this.element.dataset.dogId}/bookings/${this.element.dataset.bookingId}/accept`, {method: "POST"}
    ).then(response => response.text())
      .then((data) => {console.log(data)})
  }
  decline() {
    this.decline_btnTarget.innerText = "Declined!"
    this.accept_btnTarget.innerText = "Accept"

    fetch(`/dogs/${this.element.dataset.dogId}/bookings/${this.element.dataset.bookingId}/decline`, {method: "POST"}
    ).then(response => response.text())
      .then((data) => {console.log(data)})
  }
}

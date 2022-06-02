import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["form"];

  scroll() {
    console.log(scroll)

    if (window.scrollY) {
      this.element.classList.add("fixed-bookings")
    } else {
      this.element.classList.remove("fixed-bookings")
    }
  }
}

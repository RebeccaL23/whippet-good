import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="see-more"
export default class extends Controller {
  static targets = ["card", "link"];

  reveal() {
    this.linkTargets.forEach(element => element.classList.add("hidden"))
    this.cardTargets.forEach(element => element.classList.remove("hidden"))
  }
}

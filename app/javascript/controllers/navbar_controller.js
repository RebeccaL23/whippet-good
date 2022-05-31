import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("The navbar controller is now loaded!")
  }
}

import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown"
export default class extends Controller {
  static values = {
    counter: {
      type: Number,
      default: 10
    }
  }
  connect() {
    console.log(this.counterValue, this.element)
    this.element.innerHTML = 'cuento =>'+this.counterValue
  }
}

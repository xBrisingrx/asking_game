import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  connect() {
  }

  selected(event) {
    let seleccion = document.getElementsByClassName('radio')
    for(let s of seleccion) {
      s.classList.remove('selected')
    }
    event.target.classList.add('selected')
  }
}

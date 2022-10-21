import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static values = {
    correct: String
  }
  
  connect() {
    console.info( this.correct )
  }

  selected(event) {
    let seleccion = document.getElementsByClassName('radio')
    for(let s of seleccion) {
      s.classList.remove('selected')
    }
    event.target.classList.add('selected')
  }

  // submit(e){
  //   e.preventDefault()
  //   console.log('Fire!!', this.element);
  //   this.element.requestSubmit();
  // }
}

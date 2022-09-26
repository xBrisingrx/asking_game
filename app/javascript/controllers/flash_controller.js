import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    const node = this.element;
    const time = node.dataset.tiempo
    const effect = node.dataset.effect
    // effect default: rubberBand
    this.animateCSS(effect, time).then(() => {
      this.animateCSS("zoomOut", time).then(() => {
        node.style.visibility = "hidden";
      });
    });
  }

  animateCSS(animation, time) {
    // We create a Promise and return it
    return new Promise((resolve, _reject) => {
      const animationName = `animate__${animation}`;
      const node = this.element;
      node.classList.add("animate__animated", animationName);
      node.style.setProperty('--animate-duration', `${time}.0s`);

      // When the animation ends, we clean the classes and resolve the Promise
      function handleAnimationEnd(event) {
        event.stopPropagation();
        node.classList.remove("animate__animated", animationName);
        resolve("Animation ended");
      }

      node.addEventListener("animationend", handleAnimationEnd);
    });
  }
}
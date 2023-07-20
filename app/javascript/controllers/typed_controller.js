import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed"
export default class extends Controller {
static values = {
  rooms: Array
}

  connect() {
    console.log("hello typed")
    const options = {
      strings: ['Chambres étudiantes', 'Déplacements professionnels', 'Auberge de jeunesse'],
      typeSpeed: 30,
      backSpeed: 45,
      cursorChar: ' <span class="pri-color"> <</span>',
      backDelay: 1300,
      loop: true
    };
    new Typed(this.element, options)
  }

}

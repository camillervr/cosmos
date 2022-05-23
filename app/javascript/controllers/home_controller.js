import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home"
export default class extends Controller {
  connect() {
    const titles = ['stay', 'party', 'relax', 'love'];
    let currentIndex = 0;

    setInterval(() => {

      this.element.innerHTML= titles[currentIndex];

      currentIndex++;

      if (currentIndex === 4)
      currentIndex = 0;

    }, 1000)

  }
}

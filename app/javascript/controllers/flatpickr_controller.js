import { Controller } from "@hotwired/stimulus"

import flatpickr from "flatpickr"

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    flatpickr(".datepicker", {
      enableTime: false,
      minDate: new Date()
    });
  }
}

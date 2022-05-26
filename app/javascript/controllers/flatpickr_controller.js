import { Controller } from "@hotwired/stimulus"

import flatpickr from "flatpickr"

// Connects to data-controller="flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";
export default class extends Controller {
  connect() {
    flatpickr(".datepicker", {
      enableTime: false,
      minDate: new Date()
    });
  }
}

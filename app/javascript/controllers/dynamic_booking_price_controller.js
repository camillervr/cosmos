import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="dynamic-booking-price"
export default class extends Controller {
  static targets = [ 'start', 'end', 'totalPriceHolder', 'cleaningFeesHolder', 'serviceFeesHolder', 'touristTaxHolder', 'totalHolder' ]
  static values = { night: Number }

  connect() {
    // console.log('hello from dynamic')
    // console.log('targets:', this.startTarget, this.endTarget, this.totalPriceHolderTarget )
    // console.log('targets:', this.cleaningFeesHolderTarget )
    // console.log('value', this.nightValue)
  }

  updatePrice() {
    const start = this.startTarget.value
    const end = this.endTarget.value
    // console.log ('start:', start, 'end:', end)
    // parser les dates :
    // if (start && end ) ===> si les 2 variable ne sont pas null ou vide, alors continue:
    if (start && end) {
      const diffTime = (Date.parse(end) - Date.parse(start))
      // console.log('difftime:', diffTime)
      let nbrOfDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24))
      if (nbrOfDays <= 0) {
        nbrOfDays = 1;
      }
      console.log('nombre de jours:', nbrOfDays)
      let totalPrice = (nbrOfDays * this.nightValue)
      // console.log('total:', totalPrice)
      this.totalPriceHolderTarget.innerText = totalPrice
      this.updateFees(totalPrice)
    }
  }

  updateFees(totalPrice) {
    const cleaning = Math.round(totalPrice * 0.15)
    this.cleaningFeesHolderTarget.innerText = cleaning
    const service = Math.round(totalPrice * 0.3)
    this.serviceFeesHolderTarget.innerText = Math.round(totalPrice * 0.3)
    const tax = Math.round(totalPrice * 0.15)
    this.touristTaxHolderTarget.innerText = Math.round(totalPrice * 0.15)
    this.totalHolderTarget.innerText = (cleaning + service + tax + totalPrice)
  }
}

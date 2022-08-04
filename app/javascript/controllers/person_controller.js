import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  async renderPerson(event) {
    event.preventDefault();
    const response = await get(`${event.params.path}`, {
      responseKind: 'turbo-stream'
    })
  }
}

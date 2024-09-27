import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  add({ target }) {
    const content = this.element.querySelector("template").innerHTML.replace(/NEW_RECORD/g, Date.now())
    target.insertAdjacentHTML("beforebegin", content)
  }

  remove({ target }) {
    const nestedForm = target.closest(".nested-form")
    if (nestedForm.querySelector("input[name*=_destroy]")) {
      nestedForm.querySelector("input[name*=_destroy]").value = "1"
      nestedForm.style.display = "none"
    } else {
      nestedForm.remove()
    }
  }
}

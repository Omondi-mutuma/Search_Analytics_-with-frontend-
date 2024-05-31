import { Controller } from "stimulus";
import debounce from "lodash/debounce";

export default class extends Controller {
  static targets = ["input"];

  connect() {
    this.inputTarget.addEventListener("input", debounce(this.search.bind(this), 300));
  }

  search(event) {
    fetch("/searches", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector("[name=csrf-token]").content
      },
      body: JSON.stringify({ query: event.target.value })
    });
  }
}

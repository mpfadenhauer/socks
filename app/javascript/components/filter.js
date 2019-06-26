const filter = () => {
  const filter = document.querySelector(".dropdown")
  const button = document.querySelector("#filter-button")

  if (filter && button) {
    button.addEventListener("click", (event) => {
      filter.classList.toggle('d-none')
    });
  }
}


export { filter };

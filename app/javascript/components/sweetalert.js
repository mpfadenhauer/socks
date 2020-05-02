import Swal from 'sweetalert2'

const sockcess = () => {
  const button = document.querySelector("#sockcess")
  if (button) {
    button.addEventListener("click", (event) => {
     Swal.fire({
            title: 'SockCess!',
            html:'Sock transaction complete 🧦, <br>' +
            'One small sock for man, one giant sock for mankind,<br> <br> ',
            type: 'success',
            showCloseButton: true
          });
     .then(function() {
        window.location = "https://sockciety.herokuapp.com/";
      });
    });
  }
}


export { sockcess };

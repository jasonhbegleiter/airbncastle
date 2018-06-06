import "bootstrap";
import swal from 'sweetalert';



function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-no');
      swalButton.addEventListener('click', () => {
      swal({
        title: "Unavailable",
        text: "Sorry, it's not free on those dates",
        icon: "success"
      });
    });

}

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('sweet-alert-yes');
      swalButton.addEventListener('click', () => {
      swal({
        title: "Success!",
        text: "Woop! It's available on your dates!",
        icon: "success"
      });
    });

}

console.log('hello');


bindSweetAlertButtonDemo();

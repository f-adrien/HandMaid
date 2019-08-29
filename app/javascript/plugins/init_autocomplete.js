import places from 'places.js';

const initAutocomplete = () => {
  ['booking_address', 'cleaner_address', 'client_address'].forEach((id) => {
    const addressInput = document.getElementById(id);
    if (addressInput) {
      places({ container: addressInput });
    }

  })
};


export { initAutocomplete };

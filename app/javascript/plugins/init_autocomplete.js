//this is for location autocomplete - booking_new page, client and cleaner account
// 1. yarn install places.js
// 2. create file in the plugins folder -> init_autocomplete.js
// 3. get the address id from the simple form in the view
// 3. create method const initAutocomplete and export it
// 4. call it in the application.js

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

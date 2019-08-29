import places from 'places.js';

const initLocClientAutocomplete = () => {
  const addressInput = document.getElementById('client_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initLocClientAutocomplete };

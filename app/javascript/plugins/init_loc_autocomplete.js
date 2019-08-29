import places from 'places.js';

const initLocAutocomplete = () => {
  const addressInput = document.getElementById('cleaner_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initLocAutocomplete };

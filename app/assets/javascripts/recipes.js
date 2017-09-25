$( document ).on('turbolinks:load' , (function() {
  $('.ingredient-select-in-recipes').select2({
    width: 'auto'
  });
  $('.ingredient-amounts-select-in-recipes').select2({
    width: 'auto'
  });
}));

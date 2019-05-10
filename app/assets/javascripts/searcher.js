$(document).ready(function(){
  

  var tvShowIds = [];
  var idsOnPage = document.getElementsByClassName('invisible-tv-show-ids');
  for (var i = 0; i < idsOnPage.length; i++) {
    tvShowIds.push(idsOnPage[i].innerHTML);
   }


  var tvShowNames = [];
  var showNamesOnPage = document.getElementsByClassName('name');
  for(var j = 0; j < showNamesOnPage.length; j++) {
    tvShowNames.push(showNamesOnPage[j].innerHTML);
  }

  var keys = tvShowNames;
  var values = tvShowIds;
  var autocompleteData = {};
  var localTvShows = {};


  keys.forEach((key, i) => localTvShows[key] = values[i]);
  tvShowMap = Object.entries(localTvShows).map(([name, id]) => ({name, id}));


  keys.forEach((key, i) => autocompleteData[key] = null);


  $('input.autocomplete').autocomplete({
    data: autocompleteData,
    onAutocomplete: function(val) {
        var value = $('input.autocomplete').val();
        window.location.assign(`/reviews/${getTime().toString()}/search_results?query=${value}`);
    },
    limit: 10
  });

  $('input.autocomplete').keypress(function (e) {
    if (e.which == 13) {
      var value = $('input.autocomplete').val();
      window.location.assign(`/reviews/${getTime().toString()}/search_results?query=${value}`);
    }
  });
});

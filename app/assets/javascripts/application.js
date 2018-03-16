// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$( document ).ready(function() {
  $('.my-td input').blur(function() {
    var $item = $(this);
    var id = $item.attr('data-id');
    var name = $item.val();
    var item = { item: { name: name } };
    var body = JSON.stringify(item);

    $.ajax({
      type: 'PUT',
      dataType: 'json',
      contentType: 'application/json',
      url: "http://localhost:3000/items/" + id, // A valid URL
      data: body // Some data e.g. Valid JSON as a string
    });
  });
})

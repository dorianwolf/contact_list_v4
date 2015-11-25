$(document).ready(function() {

  $.getJSON("/contacts", function(contacts){
    $(contacts).each(function(i, contact){
      $('#contact').append(
        `<tr>
          <td>${contact.name}</td><td>${contact.email}</td>
        </tr>`
      );
    });
  });

  $('#button').click(function(event){

    var name = $('#name').val();
    var email = $('#email').val();
    var data = {"name": name, "email": email};

    $.post('/contacts/new', data, function(contacts){
      $(contacts).each(function(i, contact){
        $('#contact').append(
          `<tr>
            <td>${contact.name}</td><td>${contact.email}</td>
          </tr>`
        );
      });
    }, 'json');
  });

});

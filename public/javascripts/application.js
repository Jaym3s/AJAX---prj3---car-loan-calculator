// Jaymes Waters
// Project 3
// Car loan Calculator

$(document).ready(function() {

  $('#no_js_warning').remove();

  //populate 'carMakes' dropdown list
  populate_car_($('#makes'), {});

  //make the carservice class
  var carService = new CarService();

  //attach trigger events to drop-downs
  $('#makes').change(function() {
    populate_car_($('#models'), {make_id: $(this).val()});
  });

  $('#models').change(function() {
    populate_car_($('#cars'), {model_id: $(this).val()});
  });

  $('#cars').change(function() {
    populate_loan_amount($(this))
  });

  //attach trigger events to button
  $('#calculateButton').bind('click', function() {
    $('#totalMonthlyPayment').val(carService.monthlyPayments());
  });
});

//populate dropdowns
function populate_car_(box, params) {
  box.empty();
  box = box [0];
  box.add(new Option(('select ' + box.id), ''), null);
  $.get(('/' + box.id + '.json'), params, function(json, textStatus) {
    $.each(json, function(index) {
      var foo = this;
      $.each(foo, function(){
        box.add(new Option(this.name, this.id), null);
      });
    });
  });
}

//populate 'loanAmount' input field
function populate_loan_amount (car) {
  $.get('/cars.json', {trim_id: car.val()}, function(json, textStatus) {
    $('#loanAmount').val(json.car.price);
  });
}
function CarService() {}

CarService.prototype.refreshPrice = function() {
  var p = $('#loanAmount').val();
  if (p != parseInt(p)) {
    alert('You must select a car first!');
  } else {
    this.price = p;
  }
}
CarService.prototype.refreshDownPayment = function() {
  var d = $('#downPayment').val();
  if (d != parseInt(d)) {
    alert('Down Payment Must be a number');
  } else {
    this.downPayment = d;
  }
}
CarService.prototype.monthlyPayments = function() {
  this.refreshPrice();
  this.refreshDownPayment();
  this.interest = $('#interest').val();
  this.loanDuration = $('#loanDuration').val();
  var p = ((this.price - this.downPayment) * 1.0);
  var n = (this.loanDuration * 1.0);
  if (this.interest.NaN) {
    return (p / n);
  }
  return ((p * Math.pow((1.0 + ((this.interest/100)/12)),(n)))/n);
}

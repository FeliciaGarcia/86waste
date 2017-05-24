angular
  .module('project5')
  .controller('BusinessesController', BusinessesController);

BusinessesController.$inject = ['businessesService'];

function BusinessesController(businessesService) {
	
  var vm = this;

  vm.businesses = [];

  vm.message = 'business page is working';

  businessesService.getBusinesses().then(function(resp) {
  	 console.log(resp.data)
    vm.businesses = resp.data;
  });
}

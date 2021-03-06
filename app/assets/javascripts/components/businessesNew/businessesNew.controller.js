angular
  .module('project5')
  .controller('BusinessesNewController', BusinessesNewController);

BusinessesNewController.$inject = ['$state', 'businessesService'];

function BusinessesNewController($state, businessesService) {
  var vm = this;
  vm.newBusiness = {};
  vm.saveBusiness = saveBusiness;
  vm.business = {
    name: '',
    description: '',
    street: '',
    city: '',
    zipcode: '',
    longitude: '',
    latitude: '',
    photourl: '',
    website: '',
    state: ''
  };
 

  
  function saveBusiness() {
    businessesService
      .saveBusiness(vm.newBusiness).then(function(resp) {
      if(resp.status == 201) {
        $state.go('businessesShow', { id: resp.data.id })
      } else {
        alert('Something went wrong when trying to create')
      }
    });
  }
}
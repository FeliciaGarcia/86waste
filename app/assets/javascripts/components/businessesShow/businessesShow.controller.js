angular
  .module('project5')
  .controller('BusinessesShowController', BusinessesShowController);

BusinessesShowController.$inject = ['$stateParams', 'businessesService', '$state'];

function BusinessesShowController($stateParams, businessesService) {
  var vm = this;

  vm.business = {};
  vm.businessDelete = businessDelete;

  businessesService.getBusiness($stateParams.id).then(function(resp) {
    vm.business = resp.data;
  });

  function businessDelete(id) {
    console.log("what's going on" + id);
        businessesService
            .destroyBusiness(id)
            .then(function(resp) {
                $state.go('businesses')
            });
      }
}

angular
  .module('project5')
  .factory('businessesService', businessesService);

businessesService.$inject = ['$http'];

function businessesService($http) {
  var factory = {};

  factory.getBusinesses = function() {
    return $http.get('/api/businesses');
  }

  factory.getBusiness = function(id) {
    return $http.get('/api/businesses/' + id);
  }
  factory.saveBusiness = function(newBusiness) {
    return $http.post('/api/businesses/', { business: newBusiness });
  }
  // factory.updateBusiness = function (updateBusiness) {
  //       return $http.patch('/api/business/' + updateBusiness.id, { business: updateBusiness});
  // }
  // factory.loadCurrentBusiness = function(id) {
  //       return $http.get('/api/business/edit/' + id);
  // }
  // factory.destroyBusiness = function (id) {
  //       return $http.delete('/api/business/' + id);
  // }
  return factory;
  }
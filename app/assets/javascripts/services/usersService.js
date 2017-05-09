angular
  .module('project5')
  .factory('usersService', usersService);

usersService.$inject = ['$http'];

function usersService($http) {
  var factory = {};

  factory.getUsers = function() {
    return $http.get('/api/users');
  };

  factory.getUsers = function(id) {
    return $http.get('/api/users/' + id);
  }

  return factory;
}
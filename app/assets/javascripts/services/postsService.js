angular
  .module('project5')
  .factory('postsService', postsService);

postsService.$inject = ['$http'];

function postsService($http) {
  var factory = {};

  factory.getPosts = function() {
    return $http.get('/api/posts');
  }

  factory.getPost = function(id) {
    return $http.get('/api/posts/' + id);
  }
  factory.savePost = function(newPost) {
    return $http.post('/api/posts/', { post: newPost });
  }
  factory.updatePost = function (updatePost) {
        return $http.patch('/api/posts/' + updatePost.id, { post: updatePost});
  }
  factory.loadCurrentPost = function(id) {
        return $http.get('/api/posts/edit/' + id);
  }
  factory.destroyPost = function (id) {
        return $http.delete('/api/posts/' + id);
  }
  return factory;
  }
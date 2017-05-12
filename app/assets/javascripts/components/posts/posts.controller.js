angular
  .module('project5')
  .controller('PostsController', PostsController);

PostsController.$inject = ['postsService'];

function PostsController(postsService) {
	
  var vm = this;

  vm.posts = [];

  postsService.getPosts().then(function(resp) {
  	 console.log(resp.data)
    vm.posts = resp.data;
  });
}
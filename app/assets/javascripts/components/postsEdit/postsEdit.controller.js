angular
  .module('project5')
  .controller('PostsEditController', PostsEditController);

PostsEditController.$inject = ['$stateParams', '$state', 'postsService',];

function PostsEditController($stateParams, $state, postsService) {
  var vm = this;

  vm.post = {};

  vm.savePost = savePost;
 

  postsService.getPost($stateParams.id).then(function(resp) {
    vm.post = resp.data;
    console.log('hello from edit controller');
  });

  function savePost() {
    console.log('is this working?') 
    console.log(vm.post)
    postsService
      .updatePost(vm.post)
      .then(function(resp) {
        if(resp.status === 200) {
         $state.go('postsShow', { id:vm.post.id })
        } else {
          alert('Something went wrong when trying to update')
        }
    });
  }
}
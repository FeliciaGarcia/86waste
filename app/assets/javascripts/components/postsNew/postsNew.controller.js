angular
  .module('project5')
  .controller('PostsNewController', PostsNewController);

PostsNewController.$inject = ['$state', 'postsService'];

function PostsNewController($state, postsService) {
  var vm = this;
  vm.newPost = {};
  vm.savePost = savePost;
  vm.post = {
    title: '',
    content: '',
    photourl: ''
  };

  
  function savePost() {
    postsService
      .savePost(vm.newPost).then(function(resp) {
      if(resp.status == 201) {
        $state.go('postsShow', { id: resp.data.id })
      } else {
        alert('Something went wrong when trying to create')
      }
    });
  }
}
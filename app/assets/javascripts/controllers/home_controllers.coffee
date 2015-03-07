angular.module('deviseTokenAuthApp').controller("HomeCtrl", ['$scope', 'User', '$http', '$auth', ($scope, User, $http, $auth) ->

  # $http.get($auth.apiUrl() + '/users.json')
  #   .success (resp) -> 
  #     $scope.users = resp.users
  #   .error (resp) -> 
  #     alert(resp.errors[0])

  @userService = new User(serverErrorHandler)
  @userService.all().$promise.then (result) ->
    $scope.users = result.users

  serverErrorHandler = ->
    console.log("There was a server error.")

])
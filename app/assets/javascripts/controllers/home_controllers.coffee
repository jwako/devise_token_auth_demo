angular.module('deviseTokenAuthApp').controller("HomeCtrl", ['$scope', 'User', ($scope, User) ->

  @userService = new User(serverErrorHandler)
  @userService.all().$promise.then (result) ->
    $scope.users = result.users

  serverErrorHandler = ->
    console.log("There was a server error.")

])
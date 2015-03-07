angular.module('deviseTokenAuthApp').controller("AuthCtrl", ['$rootScope', '$scope', '$auth', '$state', ($rootScope, $scope, $auth, $state) ->

  $scope.handleRegBtnClick = () -> 
    $auth.submitRegistration($scope.registrationForm)
      .then (resp) ->
        $scope.registrationForm = {}
        $state.go 'home'
      .catch (resp) ->
        $scope.registrationForm.password = ""
        $scope.registrationForm.password_confirmation = ""

  $scope.handleLoginBtnClick = () -> 
    $auth.submitLogin($scope.loginForm)
      .then (resp) ->
        $state.go 'home'

])
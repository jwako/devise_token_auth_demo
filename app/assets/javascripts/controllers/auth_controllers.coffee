angular.module('deviseTokenAuthApp').controller("AuthCtrl", ['$rootScope', '$scope', '$auth', '$state', '$http', ($rootScope, $scope, $auth, $state, $http) ->

  $scope.$on 'auth:registration-email-success', (ev, message) ->
    angular.element("#signUpTitle").after('<p class="alert alert-success">A confirmation mail was sent to ' + message.email + ' successfully</p>')

  $scope.$on 'auth:registration-email-error', (ev, reason) ->
    angular.element("#signUpTitle").after('<p class="alert alert-danger">' + reason.errors[0] + '</p>')

  $rootScope.$on 'auth:login-success', (ev, user) ->
    console.log('Welcome ', user.email)

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

  serverErrorHandler = ->
    console.log("There was a server error.")

])
deviseTokenAuthApp = angular.module('deviseTokenAuthApp', [
  'ng-token-auth'
  'ui.router'
  'templates'
])
.config ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
.config ($authProvider) ->
  $authProvider.configure
    apiUrl: '/api/v1'
.config ($stateProvider, $urlRouterProvider, $locationProvider) ->
  $stateProvider
    .state 'top',
      url: '/'
      templateUrl: 'top/show.html'
      controller: 'AuthCtrl'
    .state 'home',
      url: '/home'
      templateUrl: 'home/show.html'
      controller: 'HomeCtrl'

  # default fall back route
  $urlRouterProvider.otherwise('/')


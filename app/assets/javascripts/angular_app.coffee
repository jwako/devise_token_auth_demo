deviseTokenAuthApp = angular.module('deviseTokenAuthApp', ['ng-token-auth'])
  .config ($authProvider) ->
    $authProvider.configure
      apiUrl: '/api/v1'


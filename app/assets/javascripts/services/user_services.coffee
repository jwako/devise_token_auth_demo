angular.module('deviseTokenAuthApp').factory('User', ['$resource', ($resource) ->
  class User
    constructor: (errorHandler) ->
      @service = $resource('/api/v1/users.json',
        {},
        {'query': { method: 'GET' }})
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)

])
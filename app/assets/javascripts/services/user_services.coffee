angular.module('deviseTokenAuthApp').factory('User', ['$resource', ($resource) ->
  class User
    constructor: (errorHandler) ->
      @service = $resource('/users.json',
        {},
        {'query': { method: 'GET' }})
      @errorHandler = errorHandler

    all: ->
      @service.query((-> null), @errorHandler)

])
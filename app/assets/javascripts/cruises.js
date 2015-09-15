var cruiseCenter = angular.module('CruiseCenter', ['ngResource']);

cruiseCenter.factory("Cruise", function($resource) {
  return $resource("cruises/:id", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' },
    update:  { method: 'PUT', responseType: 'json' }
  });
})

cruiseCenter.controller("cruisesController", function($scope, Cruise) {
  $scope.cruises = Cruise.index()

  $scope.addCruise = function() {
    cruise = Cruise.save($scope.newCruise)

    $scope.cruises.push(cruise)
    $scope.newCruise = {}
  }

  $scope.deleteCruise = function(index) {
    
    cruise = $scope.cruises[index]
    Cruise.delete(cruise)
    $scope.cruises.splice(index, 1);
  }
})
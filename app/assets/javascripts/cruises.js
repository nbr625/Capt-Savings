



var app = angular.module('app', ['ngResource']);




app.factory("Cruise", function($resource) {
  return $resource("cruises/:id", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' }
  });
})

app.controller("CruisesController", function($scope, Cruise) {
  $scope.cruises = Cruise.index()
})




app.factory("Sailing", function($resource) {
  return $resource("sailings/:id", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' }
  });
})

app.controller("SailingsController", function($scope, Sailing) {
  $scope.sailings = Sailing.index()


})








app.factory("SailingOption", function($resource) {
  return $resource("sailing_options/:id", { id: '@id' }, {
    index:   { method: 'GET', isArray: true, responseType: 'json' }
  });
})

app.controller("SailingOptionsController", function($scope, SailingOption) {
  $scope.sailing_options = SailingOption.index()
})


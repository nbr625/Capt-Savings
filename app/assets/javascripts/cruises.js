var dashboardCenter = angular.module('DashboardCenter', ['$http', '$scope']);

    dashboardCenter.controller("dashboardController", [ '$scope', '$http', function($scope, $http) {
      $http({ method: 'GET', url: 'db/jsondata/dashboard1.json'}).success(function(data){
        $scope.dashboard = data;
      });
}]);


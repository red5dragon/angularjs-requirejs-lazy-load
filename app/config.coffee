define [
  "app/application"
], (
  application
) ->

  application.config [ "$routeProvider", ($routeProvider) ->

    $routeProvider

      .when "/table",
        templateUrl: "views/table.html"
        controller: "tableController"
        resolve:
          table: ($http) ->
            $http.get "app/data/table.json"

      .when "/chart",
        templateUrl: "views/chart.html"
        controller: "chartController"
        resolve:
          chart: ($http) ->
            $http.get "app/data/chart.json"

      .when "/list",
        templateUrl: "views/list.html"
        controller: "listController"
        resolve:
          list: ($http) ->
            $http.get "app/data/list.json"

      .otherwise
        redirectTo: "/table"

  ]
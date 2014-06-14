console.log \hello \livescript

app = angular.module 'app', []

app.controller 'DataListCtrl'  ($scope) ->
  this.data = {}
  $scope.phones =
    * 'name': 'Nexus S'
      'snippet': 'Fast just got faster with Nexus S.'
    * 'name': 'Motorola XOOM™ with Wi-Fi'
      'snippet': 'The Next, Next Generation tablet.'
  this.addData = ->
    this.phones.push(this.data)
    this.data = {}

app.directive 'phoneList' ->
  restrict: 'A'
  templateUrl: 'phone-list.html'

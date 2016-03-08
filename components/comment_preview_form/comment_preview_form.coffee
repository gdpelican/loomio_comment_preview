angular.module('loomioApp').factory 'commentPreviewForm', ->
  templateUrl: 'generated/components/comment_preview_form.html'
  controller: ($scope, $rootScope, comment, CurrentUser, FormService) ->
    $scope.comment = comment.clone()
    $scope.author = -> CurrentUser

    $scope.submit = FormService.submit $scope, $scope.comment,
      flashSuccess: "comment_form.messages.created"
      successCallback: -> $rootScope.$broadcast 'resetCommentForm'

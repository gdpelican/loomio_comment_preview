angular.module('loomioApp').directive 'commentPreviewButton', ->
  restrict: 'E'
  replace: true
  templateUrl: 'generated/components/comment_preview_button.html'
  controller: ($scope, ModalService, CommentPreviewForm) ->
    $scope.openPreviewModal = ->
      ModalService.open CommentPreviewForm, comment: -> $scope.comment

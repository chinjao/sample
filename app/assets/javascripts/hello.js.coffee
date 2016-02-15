# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#$ ->
init = ->

  class Sample
    constructor: (@name) ->
      result = document.getElementById 'result'
      result.onclick = =>
        alert "はじめまして、#{@name}さん !"

  s = new Sample('山田')
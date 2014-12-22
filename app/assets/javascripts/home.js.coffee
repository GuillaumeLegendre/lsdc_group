# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


ready = undefined

ready = ->
  getUrlParameter = (sParam) ->
    sPageURL = window.location.search.substring(1)
    sURLVariables = sPageURL.split("&")
    i = 0

    while i < sURLVariables.length
      sParameterName = sURLVariables[i].split("=")
      return sParameterName[1] if sParameterName[0] is sParam
      i++
    return

  Dropzone.options.myAwesomeDropzone =
    paramName: "file" # The name that will be used to transfer the file
    maxFilesize: 2 # MB
    accept: (file, done) ->
      done()
      return

  $("#world-map").vectorMap
    map: "fr_regions_mill_en"
    backgroundColor: "#efefee"
    zoomOnScroll: false
    zoomMin: 1
    zoomMax: 1
    regionStyle:
      initial:
        fill: "purple"

    markerStyle:
      initial:
        fill: "#F8E23B"
        stroke: "#383f47"

    onRegionClick: (e, code) ->
      window.location.href = "/home/form?region="+code
      return

    markers: [
      {
        latLng: [
          42.5
          1.51
        ]
        name: "Andorra"
      }
      {
        latLng: [
          43.73
          7.41
        ]
        name: "Monaco"
      }
      {
        latLng: [
          45.76
          4.84
        ]
        name: "Lyon"
      }
    ]

  fill_select_departement = () ->
    region = $("#select_region option:selected").attr("data-region")
    departements = $("#"+region+" > option").clone()
    $("#select_departement").html(departements)
    return

  $("#select_region").change ->
    fill_select_departement()
    return

  region = getUrlParameter('region')
  if region
    $("#select_region").val $("#select_region > option[data-region=" + region + "]").val()
  fill_select_departement()

  cat = getUrlParameter('cat')


  return

$(document).ready ready
$(document).on "page:load", ready

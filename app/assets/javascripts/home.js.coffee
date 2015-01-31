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

  Dropzone.options.dropzone1 =
    paramName: "file" # The name that will be used to transfer the file
    maxFilesize: 4 # MB
    dictDefaultMessage: "TEST"
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
        fill: "black",
      hover:
        fill: "#fdda86"
        "fill-opacity": 1,
        cursor: 'pointer'

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
          43.5333
          5.43333
        ]
        name: "Aix-en-Provence"
      },
      {
        latLng: [
          49.9
          2.3
        ]
        name: "Amiens"
      },
      {
        latLng: [
          47.4667
          -0.55
        ]
        name: "Angers"
      },
      {
        latLng: [
          48.95
          2.25
        ]
        name: "Argenteuil"
      },
      {
        latLng: [
          43.95
          4.81667
        ]
        name: "Avignon"
      },
      {
        latLng: [
          47.25
          6.03333
        ]
        name: "Besançon"
      },
      {
        latLng: [
          43.35
          3.25
        ]
        name: "Beziérs"
      },
      {
        latLng: [
          44.8333
          -0.566667
        ]
        name: "Bordeaux"
      },
      {
        latLng: [
          48.8333
          2.25
        ]
        name: "Boulogne-Billancourt"
      },
      {
        latLng: [
          48.4
          -4.48333
        ]
        name: "Brest"
      },
      {
        latLng: [
          45.1583
          1.5321

        ]
        name: "Brive-la-Gaillarde"
      },
      {
        latLng: [
          49.1833
          -0.35
        ]
        name: "Caen"
      },
      {
        latLng: [
          45.7833
          3.08333
        ]
        name: "Clermont-Ferrand"
      },
      {
        latLng: [
          48.8973
          2.25222
        ]
        name: "Courbevoie"
      },
      {
        latLng: [
          48.7833
          2.46667
        ]
        name: "Créteil"
      },
      {
        latLng: [
          47.3167
          5.01667
        ]
        name: "Dijon"
      },
      {
        latLng: [
          51.05
          2.36667
        ]
        name: "Dunkerque"
      },
      {
        latLng: [
          -61.0732
          14.627
        ]
        name: "Fort-de-France"
      },
      {
        latLng: [
          45.1667
          5.71667
        ]
        name: "Grenoble"
      },
      {
        latLng: [
          49.5
          0.133333
        ]
        name: "Le Havre"
      },
      {
        latLng: [
          48
          0.2
        ]
        name: "Le Mans"
      },
      {
        latLng: [
          50.6333
          3.06667
        ]
        name: "Lille"
      },
      {
        latLng: [
          45.85
          1.25
        ]
        name: "Limoges"
      },
      {
        latLng: [
          45.7589
          4.84139
        ]
        name: "Lyon"
      },
      {
        latLng: [
          43.2967
          5.37639
        ]
        name: "Marseille"
      },
      {
        latLng: [
          49.1333
          6.16667
        ]
        name: "Metz"
      },
      {
        latLng: [
          43.6
          3.88333
        ]
        name: "Montpellier"
      },
      {
        latLng: [
          50.4644
          1.76417
        ]
        name: "Montreuil"
      },
      {
        latLng: [
          47.75
          7.33333
        ]
        name: "Mulhouse"
      },
      {
        latLng: [
          48.6833
          6.2
        ]
        name: "Nancy"
      },
      {
        latLng: [
          48.9
          2.2
        ]
        name: "Nanterre"
      },
      {
        latLng: [
          47.2167
          -1.55
        ]
        name: "Nantes"
      },
      {
        latLng: [
          43.1833
          3
        ]
        name: "Narbonne"
      },
      {
        latLng: [
          43.7
          7.25
        ]
        name: "Nice"
      },
      {
        latLng: [
          43.8333
          4.35
        ]
        name: "Nîmes"
      },
      {
        latLng: [
          47.9167
          1.9
        ]
        name: "Orléans"
      },
      {
        latLng: [
          42.6833
          2.88333
        ]
        name: "Perpignan"
      },
      {
        latLng: [
          46.5833
          0.333333
        ]
        name: "Poitiers"
      },
      {
        latLng: [
          49.25
          4.03333
        ]
        name: "Reims"
      },
      {
        latLng: [
          48.1147
          -1.6794
        ]
        name: "Rennes"
      },
      {
        latLng: [
          50.7
          3.16667
        ]
        name: "Roubaix"
      },
      {
        latLng: [
          49.4333
          1.08333
        ]
        name: "Rouen"
      },
      {
        latLng: [
          48.2333
          3.26667
        ]
        name: "Saint-Denis"
      },
      {
        latLng: [
          45.4333
          4.4
        ]
        name: "Saint-Étienne"
      },
      {
        latLng: [
          49.4333
          2
        ]
        name: "Saint-Paul"
      },
      {
        latLng: [
          48.5833
          7.75
        ]
        name: "Strasbourg"
      },
      {
        latLng: [
          43.1167
          5.93333
        ]
        name: "Toulon"
      },
      {
        latLng: [
          43.6
          1.43333
        ]
        name: "Toulouse"
      },
      {
        latLng: [
          50.7167
          3.15
        ]
        name: "Tourcoing"
      },
      {
        latLng: [
          47.3833
          0.683333
        ]
        name: "Tours"
      },
      {
        latLng: [
          45.7667
          4.88333
        ]
        name: "Villeurbanne"
      }
    ]
    series: {
      regions: [{
        values: {
          'FR-V': '1',
          'FR-J': '2',
          'FR-A': '3',
          'FR-B': '4',
          'FR-R': '5',
          'FR-O': '6'
        },
        scale: {
          "1": "#fdda86",
          "2": "#fdda86",
          "3": "#fdda86",
          "4": "#fdda86",
          "5": "#fdda86",
          "6": "#fdda86"
        }
      }]
    }

  filter = "
    <filter
      id = 'dropShadow'
      x='0'
      y='0'
      width='200%'
      height='200%'>
      <feOffset
        in = 'SourceAlpha'
        result = 'offOut'
        dx = '3'
        dy = '3'/>
      <feGaussianBlur
        in = 'offOut'
        result = 'blurOut'
        stdDeviation = '3'/>
      <feBlend
        in='SourceGraphic'
        in2='blurOut'
        mode='normal'/>
    </filter>"

  # Create dummy svg with filter definition
  $("body").append "<svg id=\"dummy\" style=\"display:none\"><defs>" + filter + "</defs></svg>"

  # Append filter definition to vectormap created svg
  $("#world-map svg").append $("#dummy defs")

  # Remove dummy
  $("#dummy").remove()

  # Connect filter to the group of map objects
  $("#world-map svg g").attr "filter", "url(#dropShadow)"


  fill_select_departement = () ->
    region = $("#select_region option:selected").attr("data-region")
    if region
      departements = $("#"+region+" > option").clone()
      o = new Option("", "");
      $("#select_departement").empty()
      $("#select_departement").append(o);
      $("#select_departement").append(departements)
    return

  $("#select_region").change ->
    fill_select_departement()
    return

  fill_select_sous_cat = () ->
    $("#panel-infos-supp").addClass("hide")
    cat = $("#select_cat option:selected").attr("data-cat")
    if cat
      sous_cat = $("#"+cat+" > option").clone()
      o = new Option("", "");
      $("#select_sous_cat").empty()
      $("#select_sous_cat").append(o);
      $("#select_sous_cat").append(sous_cat)
    return

  $("#select_cat").change ->
    fill_select_sous_cat()
    return

  print_infos_supp = () ->
    infosupp = $("#select_sous_cat option:selected").attr("data-infosupp")
    if infosupp && $('#radio_vendeur').is(':checked')
      $("#panel-infos-supp").removeClass("hide")
      $("#info-supp-content").html $("#"+infosupp).clone()
    else
      $("#panel-infos-supp").addClass("hide")
      $("#info-supp-content").empty()
    return


  $("#select_sous_cat").change ->
    print_infos_supp()

  $("#radio-pro, #radio-part").change ->
    $("#form-professionnel, #form-status").removeClass("hide")
    if ! $("#radio-pro").is(':checked')
      $("#form-professionnel").addClass("hide")
    return

  $("#radio_vendeur, #radio_acheteur").change ->
    $(".step0").removeClass("hide")
    $("#acheteur, #vendeur").removeClass("hide")
    if $("#radio_vendeur").is(':checked')
      $("#acheteur").addClass("hide")
      $("#vendeur input, #vendeur textarea").attr("required",true)
      $("#acheteur input, #acheteur textarea").attr("required",false)
      $(".multi-design").removeClass("acheteur")
      $(".multi-design").addClass("vendeur")
      $("#tuto-acheteur").hide()
      $("#tuto-vendeur").show()
      $("#submit").text("ENVOYER VOTRE PROPOSITON DE RACHAT")
      $("#submit").addClass("btn-vendeur")
      $("#submit").removeClass("btn-acheteur")
      $("#input_img1").attr("required", "required")
      $("#input_img1").removeClass("no-warning")
      print_infos_supp()
    else
      $("#vendeur").addClass("hide")
      $("#acheteur input, #acheteur textarea").attr("required",true)
      $("#vendeur input, #vendeur textarea").attr("required",false)
      $(".multi-design").removeClass("vendeur")
      $(".multi-design").addClass("acheteur")
      $("#tuto-vendeur").hide()
      $("#tuto-acheteur").show()
      $("#submit").text("ENVOYER VOTRE DEMANDE DE RECHERCHE")
      $("#submit").addClass("btn-acheteur")
      $("#submit").removeClass("btn-vendeur")
      $("#input_img1").attr("required", false)
      $("#input_img1").addClass("no-warning")
      print_infos_supp()
    return

  $("input.hook").each ->
    elem = $(this)
    elem.data "oldVal", elem.val()
    elem.bind "propertychange change click keyup input paste", (event) ->
      unless elem.data("oldVal") is elem.val()
        elem.data "oldVal", elem.val()
        hook = $(this).attr("data-hook")
        $(".step"+ hook).removeClass("hide")
        if(hook == "7")
          $("#submit").attr("disabled", false)
      return
    return

  $("select.hook").change ->
    if $(this).attr("id") == "select_cat"
      fill_select_sous_cat()
    $(".step"+ $(this).attr("data-hook")).removeClass("hide")

  region = getUrlParameter('region')
  if region
    $("#select_region").val $("#select_region > option[data-region=" + region + "]").val()
  fill_select_departement()

  cat = getUrlParameter('cat')
  if cat
    $("#select_cat").val $("#select_cat > option[data-cat=" + cat + "]").val()
  fill_select_sous_cat()

  $(".dropzone").dropzone({ url: "/file-upload" });
  # $("#dropzone1, #dropzone2, #dropzone3").addClass("dropzone");

  type = getUrlParameter('type')
  if type
    $("#radio_"+ type).click()


  readURL = (input) ->
    if input.files and input.files[0]
      reader = new FileReader()
      val = $(input).attr("data-value")
      reader.onload = (e) ->
        $("#img_import_"+  val).attr "src", e.target.result
        return

      reader.readAsDataURL input.files[0]
    return

  $("#input_img1, #input_img2, #input_img3").change ->
    readURL this
    return

  $("#img_import_1, #img_import_2, #img_import_3, #label_import_1, #label_import_2, #label_import_3").click ->
    val = $(this).attr("data-value")
    $("#input_img"+val).click()
    return

  $("#submit").click ->
    $(".input-warning").removeClass "input-warning"
    $("input, select, textarea").each (index) ->
      if !$(this).val()
        $(this).addClass "input-warning"
      return
    return


  return

$(document).ready ready
$(document).on "page:load", ready


changeSlide = ->
  $(".carousel-inner .active").removeClass "active"
  next = $(".carousel-inner").attr "data-next"
  $($(".carousel-inner > div")[next]).addClass "active"
  next = (parseInt(next) + 1)%4
  $(".carousel-inner").attr "data-next", next

  return
window.setInterval changeSlide, 8000


### facebook ###
fb_root = null
fb_events_bound = false

$ ->
  loadFacebookSDK()
  bindFacebookEvents() unless fb_events_bound

bindFacebookEvents = ->
  $(document)
    .on('page:fetch', saveFacebookRoot)
    .on('page:change', restoreFacebookRoot)
    .on('page:load', ->
      FB?.XFBML.parse()
    )
  fb_events_bound = true

saveFacebookRoot = ->
  fb_root = $('#fb-root').detach()

restoreFacebookRoot = ->
  if $('#fb-root').length > 0
    $('#fb-root').replaceWith fb_root
  else
    $('body').append fb_root

loadFacebookSDK = ->
  window.fbAsyncInit = initializeFacebookSDK
  $.getScript("//connect.facebook.net/en_US/all.js#xfbml=1")

initializeFacebookSDK = ->
  FB.init
    appId     : '220513768086130'
    channelUrl: '//connect.facebook.net/fr_FR/sdk.js#xfbml=1&appId=220513768086130&version=v2.0'
    status    : true
    cookie    : true
    xfbml     : true

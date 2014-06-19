@Equitabletod.module "AdvsearchApp.List", (List, App, Backbone, Marionette, $, _) ->

	class List.Layout extends App.Views.Layout
		template: "advsearch/list/templates/_layout"
		regions: 
			advsearchRegion: "#advsearch-region"


		onShow: ->
            $(document).ready ->
                # setup sliders
                $("#slider6").slider
                    min: Math.round gon.minvmt = if gon.minvmt then gon.minvmt else 0
                    max: Math.round gon.maxvmt = if gon.maxvmt then gon.maxvmt else 100
                    value:[gon.minvmt,gon.maxvmt]
                    step: 1 
                $("#slider7").slider
                    min: gon.minpcttran = if gon.minpcttran then gon.minpcttran else 0
                    max: gon.maxpcttran = if gon.maxpcttran then gon.maxpcttran else 0.51
                    value:[gon.minpcttran,gon.maxpcttran]
                    step: 0.001
                $("#slider8").slider
                    min: Math.round gon.minvehphh = if gon.minvehphh then gon.minvehphh else 0
                    max: Math.round gon.maxvehphh = if gon.maxvehphh then gon.maxvehphh else 4
                    value:[gon.minvehphh,gon.maxvehphh]
                    step: 0.1 
                $("#slider9").slider
                    min: gon.mintrnpcmi = if gon.mintrnpcmi then gon.mintrnpcmi else 0
                    max: gon.maxtrnpcmi = if gon.maxtrnpcmi then gon.maxtrnpcmi else 0.3
                    value:[0,0.3]
                    step: 0.001 
                $("#slider10").slider
                    min: Math.round gon.minghg = if gon.minghg then gon.minghg else 0
                    max: Math.round gon.maxghg = if gon.maxghg then gon.maxghg else 80
                    value:[0,80]
                    step: 0.1 
                $("#slider11").slider
                    min: Math.round gon.minfar = if gon.minfar then gon.minfar else 0
                    max: Math.round gon.maxfar = if gon.maxfar then gon.maxfar else 80
                    value:[gon.minfar,gon.maxfar]
                    step: 0.01 
                $("#slider12").slider
                    min: Math.round gon.minprkac = if gon.minprkac then gon.minprkac else 0
                    max: Math.round gon.maxprkac = if gon.maxprkac then gon.maxprkac else 80
                    value:[gon.minprkac,gon.maxprkac]
                    step: 1
                $("#slider13").slider
                    min: Math.round gon.minintntot = if gon.minintntot then gon.minintntot else 0
                    max: Math.round gon.maxintntot = if gon.maxintntot then gon.maxintntot else 80
                    value:[gon.minintntot,gon.maxintntot]
                    step: 1
                $("#slider14").slider
                    min: Math.round gon.minmix = if gon.minmix then gon.minmix else 0
                    max: Math.round gon.maxmix = if gon.maxmix then gon.maxmix else 75.9
                    value:[gon.minmix,gon.maxmix]
                    step: 0.01
                $("#slider15").slider
                    min: Math.round gon.minhupac = if gon.minhupac then gon.minhupac else 0
                    max: Math.round gon.maxhupac = if gon.maxhupac then gon.maxhupac else 200
                    value:[0 ,200]
                    step: 0.01
                $("#slider16").slider
                    min: Math.round gon.minempden = if gon.minempden then gon.minempden else 0
                    max: Math.round gon.maxempden = if gon.maxempden then gon.maxempden else 425
                    value:[0 ,425]
                    step: 0.1
                $("#slider18").slider
                    min: Math.round gon.minwalkscore = if gon.minwalkscore then gon.minwalkscore else 0
                    max: Math.round gon.maxwalkscore = if gon.maxwalkscore then gon.maxwalkscore else 425
                    value:[0 ,425]
                    step: 0.01
                $("#slider19").slider
                    min: Math.round gon.minhupipe = if gon.minhupipe then gon.minhupipe else 0
                    max: Math.round gon.maxhupipe = if gon.maxhupipe then gon.maxhupipe else 4719
                    value:[0 ,4719]
                    step: 1
                $("#slider20").slider
                    min: Math.round gon.minemppipe = if gon.minemppipe then gon.minemppipe else 0
                    max: Math.round gon.maxemppipe = if gon.maxemppipe then gon.maxemppipe else 16588
                    value:[0 ,16588]
                    step: 1
                $("#slider21").slider
                    min: Math.round gon.minemp10 = if gon.minemp10 then gon.minemp10 else 0
                    max: Math.round gon.maxemp10 = if gon.maxemp10 then gon.maxemp10 else 16588
                    value:[gon.minemp10 ,gon.maxemp10]
                    step: 1
                $("#slider22").slider
                    min: Math.round gon.minextaxrev = if gon.minextaxrev then gon.minextaxrev else 0
                    max: Math.round gon.maxextaxrev = if gon.maxextaxrev then gon.maxextaxrev else 155108987
                    value:[gon.minextaxrev ,gon.maxextaxrev]
                    step: 1
                $("#slider23").slider
                    min: Math.round gon.minest10 = if gon.minest10 then gon.minest10 else 6
                    max: Math.round gon.maxest10 = if gon.maxest10 then gon.maxest10 else 9004
                    value:[gon.minest10 ,gon.maxest10]
                    step: 1
                $("#slider24").slider
                    min: Math.round gon.minaval = if gon.minaval then gon.minaval else 33567503
                    max: Math.round gon.maxaval = if gon.maxaval then gon.maxaval else 19066783589
                    value:[gon.minaval ,gon.maxaval]
                    step: 1
                $("#slider25").slider
                    min: Math.round gon.minhh10 = if gon.minhh10 then gon.minhh10 else 0
                    max: Math.round gon.maxhh10 = if gon.maxhh10 then gon.maxhh10 else 17815
                    value:[gon.minhh10 ,gon.maxhh10]
                    step: 1
                $("#slider26").slider
                    min: Math.round gon.minhhinc = if gon.minhhinc then gon.minhhinc else 0
                    max: Math.round gon.maxhhinc = if gon.maxhhinc then gon.maxhhinc else 100
                    value:[gon.minhhinc,gon.maxhhinc]
                    step: 1
                $("#slider27").slider
                    min: Math.round gon.minrentocc = if gon.minrentocc then gon.minrentocc else 0
                    max: Math.round gon.maxrentocc = if gon.maxrentocc then gon.maxrentocc else 1
                    value:[0,1]
                    step: 0.01
                $("#slider28").slider
                    min: Math.round gon.minhhnocar = if gon.minhhnocar then gon.minhhnocar else 0
                    max: Math.round gon.maxhhnocar = if gon.maxhhnocar then gon.maxhhnocar else 0.66
                    value:[0,0.66]
                    step: 0.01

                $("#slider29").slider
                    min: Math.round gon.minedatt = if gon.minedatt then gon.minedatt else 0
                    max: Math.round gon.maxedatt = if gon.maxedatt then gon.maxedatt else 0.91
                    value:[gon.minedatt,gon.maxedatt]
                    step: 0.01
                $("#titles").html "<p class='h2'></p>"
                $(".inlinesparklinevmt").sparkline gon.vmts, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '465', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'     
                $(".inlinesparklinefar").sparkline gon.fars, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '515', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'
                $(".inlinesparklinepcttran").sparkline gon.pcttrans, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '1360', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'
                $(".inlinesparklineprkac").sparkline gon.prkacs, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'       
                $(".inlinesparklinehupipe").sparkline [0, 82, 337, 1125.95, 4719], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000' 
                $(".inlinesparklineemppipe").sparkline [0, 126.05, 1353.59, 2744.05, 16587.49], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
                $(".inlinesparklineemp10").sparkline gon.emp10s, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '450', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'       
                $(".inlinesparklineextaxrev").sparkline gon.extaxrevs, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '450', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'      
                $(".inlinesparklinehh10").sparkline gon.hh10s, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '450', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'      
                $(".inlinesparklinehhinc").sparkline gon.hhincs, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '450', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'      
                $(".inlinesparklinevehphh").sparkline gon.vehphhs, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '545', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000' 
                $(".inlinesparklinetrnpcmi").sparkline gon.trnpcmis, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '2080', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000' 
                $(".inlinesparklineghg").sparkline [0, 6.6, 11.15, 17.15, 75.9], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '465', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'    
                $(".inlinesparklineintntot").sparkline gon.intntots, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '455', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'    
                $(".inlinesparklinemix").sparkline gon.mixs, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '909', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'                       
                $(".inlinesparklinehupac").sparkline [0, 4.62, 13.03, 28.42, 200], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
                $(".inlinesparklineempden").sparkline [0, 12.102, 20.264, 34.031, 424.07], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
                $(".inlinesparklineest10").sparkline gon.est10s, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
                $(".inlinesparklineaval").sparkline gon.avals, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '460', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
                $(".inlinesparklinerentocc").sparkline [0, 0.379, 0.584, 0.719, 0.996], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '890', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
                $(".inlinesparklinehhnocar").sparkline [0, 0.06658, 0.20144, 0.36543, 0.6522], type: "box", raw: true, lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '800', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'                       
                $(".inlinesparklineedatt").sparkline gon.edatts, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '775', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000' 
                $(".inlinesparklinewalkscore").sparkline gon.walkscores, type: "box", lineColor: '#7f7e7e', whiskerColor: '#7f7e7e', boxFillColor: '#ffffff', spotRadius: 2.5, width: '450', outlierLineColor: '#303030', showOutliers: false, tooltipFormatFieldlistKey: 'field', medianColor: '#7f7e7e', targetColor: '#bf0000'   
            
            $(document).ready ->
              fm_options =
                bootstrap: true
                show_radio_button_list: false
                show_email: false
                name_placeholder: "boxplot"
                title_label : ""
                trigger_label : "How to Read Diagrams"
                custom_html: '<div id="boxplot" class="col-md-6 class="col-xs-4"><p style="line-height: 1.8em; text-align: justify; font-size: 12px; background-color: white;">The box plot (a.k.a. box and whisker diagram) is a standardized way of displaying the distribution of data based on the five number summary: minimum, first quartile, median, third quartile, and maximum. Box plot here show data distribution for all the station areas, where the central rectangle spans the first quartile to the third quartile (the interquartile range or IQR). A segment inside the rectangle shows the median and "whiskers" above and below the box show the locations of the minimum and maximum for all staton areas. The red + indicates the current station value for the field. </p></div><div class="col-md-6 class="col-xs-4"><img src="img/boxplotsimple08.png" class="img-responsive" alt="Box Plot"></div>'
                show_form: false
                name_required: false
                close_on_click_outisde: true
                message_placeholder: "Go ahead, type your feedback here..."
                feedback_url: "send_feedback_bootstrap"
                custom_params:
                  csrf: "my_secret_token"
                  user_id: "john_doe"
                  feedback_type: "bootstarp"

                delayed_options:
                  success_color: "#5cb85c"
                  fail_color: "#d2322d"
                  delay_success_milliseconds: 3500
                  send_success: "Thanks for your feedback, now go ahead and follow me on twitter/github :)"
              #init feedback_me plugin
              fm.init fm_options
              return
            $("html, body").animate
                  scrollTop: 0
                , 600         
            $(document).ready ->
                $("#fpaccordion").accordion 
                    header: "hm2" 
                    active: "false"
                    heightStyle: "content"
                    collapsible: true
                    icons:
                        header: "ui-icon-plus"
                        activeHeader: "ui-icon-minus"
            $(document).ready ->
              $("#accordion").accordion 
                header: "hm3" 
                heightStyle: "content"
                collapsible: true
                icons:
                    header: "ui-icon-plus"
                    activeHeader: "ui-icon-minus"
               return     
              $("[rel=tooltip]").tooltip placement: "top"
              $("#dialog-modal").dialog 
                    position:
                        my: "center"
                        at: "center"
                        of: "#main-region"
                    autoOpen: false
                    closeOnEscape: true
   
                    show:
                        effect: "blind"
                        duration: 100  
                    hide:
                        effect: "blind"
                        duration: 100
                    title: 
                        $("[rel=tooltipd]").title

               
                $("#dialog-modal").dialog beforeClose: (event, ui) ->
                    $("#accordion").accordion "enable"

                $("#searchbuttom").click (event, ui) ->
                    console.log "advanced search clicked"


                $("[rel=tooltipd]").click (event, ui) ->
                    console.log @
                    console.log @.title
                    $("#dialog-modal").dialog 
                    dictionaryResponse = $.ajax
                            url: "/dictionary_entries.json?by_name=#{@.title}"
                            done: (result) =>
                                return result
                    dictionary = dictionaryResponse.complete()
                    dictionary.done =>
                        dictionaries = dictionary.responseJSON
                        console.log dictionaries["0"].description if dictionaries["0"]
                        $("#dialog-modal").dialog "open"
                        $("#dialog-modal").dialog title: "Data Dictionary"
                        $("#dialog-modal").html("")
                        $("#dialog-modal").html("#{dictionaries["0"].description}")
              $(".selectpicker").selectpicker()
              $("#searchinput5").autocomplete
                source: ["<", ">", "="]
                minLength: 0
            $(document).ready ->
              $("#searchinput2").autocomplete
                source: gon.muni_names.muni_names
                minLength: 3
                select: (event, ui) ->
                    console.log event.view.gon
                    console.log ui.item.value.toLowerCase()      
              return


        events: 
            'click #searchbuttom': 'inputChange'
            'click #etod': 'etodFired'
            'click #gsa': 'gsaFired'
            'click #resetbuttom':  'resetFormArgs' 
            'click #mapClick': 'fireMap'   
            'select #searchinput1': 'inputChange'
            'click #ui-accordion-fpaccordion-header-0': 'moreText'
            'click #ui-accordion-header-icon ui-icon ui-icon-minus': 'lessText'

        inputChange: (e)=>
            urlq = "?"
            muni_name = $('input#searchinput2').val().replace(" ", "%20").toLowerCase() if $('input#searchinput2').val()
            if muni_name is undefined
                qury = ""
            else
                #name = $('input#searchinput1').val().replace(" ", "%20").toLowerCase() if $('input#searchinput1').val()
                qury = "by_muni_name=#{muni_name}".replace(/\s*\(.*?\)\s*/g, "")
            name = $('input#searchinput1').val().replace(" ", "%20").toLowerCase() if $('input#searchinput1').val()
            if name is undefined
                qury = qury + ""
            else
                qury = qury + "&by_name=#{name}".replace(/\s*\(.*?\)\s*/g, "")
            service_type = $('#selectbasic2 option:selected').val().replace(" ", "%20").toLowerCase() if $('#selectbasic2 option:selected').val()
            if service_type is undefined
                qury = qury + ""
            else    
                qury = qury + "&by_line=#{service_type}".replace(/\s*\(.*?\)\s*/g, "")
            station_type = $('#selectbasic3 option:selected').val().replace(" ", "%20").toLowerCase() if $('#selectbasic3 option:selected').val()
            if station_type is undefined
                qury = qury + ""
            else
                qury = qury + "&by_station_class=#{station_type}".replace(/\s*\(.*?\)\s*/g, "")
            etod_group = $('#selectbasic4 option:selected').val().replace(" ", "%20").toLowerCase() if $('#selectbasic4 option:selected').val()
            if etod_group is undefined
                qury = qury + ""
            else
                qury = qury + "&by_etod_category=#{etod_group}".replace(/\s*\(.*?\)\s*/g, "")
            #gon.etod_group = "#{etod_group}"
            # pick the advanced search values from slider #
            ## by_vmt ##
            vmt = $('#slider6').val().replace(" ", "%20").toLowerCase() if $('#slider6').val()
            vmt_min = vmt.slice(0,(vmt.indexOf ",", 0)) if vmt
            vmt_max = vmt.slice((vmt.indexOf ",", 0)+1, vmt.length) if vmt
            if vmt is undefined
                qury = qury + ""
            else if vmt_min
                qury = "#{qury}" + "&by_vmt[min]=#{vmt_min}&by_vmt[max]=#{vmt_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_percent_transit
            percent_transit = $('#slider7').val().replace(" ", "%20").toLowerCase() if $('#slider7').val()
            percent_transit_min = percent_transit.slice(0,(percent_transit.indexOf ",", 0)) if percent_transit
            percent_transit_max = percent_transit.slice((percent_transit.indexOf ",", 0)+1, percent_transit.length) if percent_transit
            if percent_transit is undefined
                qury = qury + ""
            else if percent_transit_min
                qury = "#{qury}" + "&by_percent_transit[min]=#{percent_transit_min}&by_percent_transit[max]=#{percent_transit_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_vehicle_perhousehold
            vehicle_perhousehold = $('#slider8').val().replace(" ", "%20").toLowerCase() if $('#slider8').val()
            vehicle_perhousehold_min = vehicle_perhousehold.slice(0,(vehicle_perhousehold.indexOf ",", 0)) if vehicle_perhousehold
            vehicle_perhousehold_max = vehicle_perhousehold.slice((vehicle_perhousehold.indexOf ",", 0)+1, vehicle_perhousehold.length) if vehicle_perhousehold
            if vehicle_perhousehold is undefined
                qury = qury + ""
            else if vehicle_perhousehold_min
                qury = "#{qury}" + "&by_vehicle_perhousehold[min]=#{vehicle_perhousehold_min}&by_vehicle_perhousehold[max]=#{vehicle_perhousehold_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_transit_commutingmiles
            transit_commutingmiles = $('#slider9').val().replace(" ", "%20").toLowerCase() if $('#slider9').val()
            transit_commutingmiles_min = transit_commutingmiles.slice(0,(transit_commutingmiles.indexOf ",", 0)) if transit_commutingmiles
            transit_commutingmiles_max = transit_commutingmiles.slice((transit_commutingmiles.indexOf ",", 0)+1, transit_commutingmiles.length) if transit_commutingmiles
            if transit_commutingmiles is undefined
                qury = qury + ""
            else if transit_commutingmiles_min
                qury = "#{qury}" + "&by_transit_commutingmiles[min]=#{transit_commutingmiles_min}&by_transit_commutingmiles[max]=#{transit_commutingmiles_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_ghg
            ghg = $('#slider10').val().replace(" ", "%20").toLowerCase() if $('#slider10').val()
            ghg_min = ghg.slice(0,(ghg.indexOf ",", 0)) if ghg
            ghg_max = ghg.slice((ghg.indexOf ",", 0)+1, ghg.length) if ghg
            if ghg is undefined
                qury = qury + ""
            else if ghg_min
                qury = "#{qury}" + "&by_ghg[min]=#{ghg_min}&by_ghg[max]=#{ghg_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_far
            far = $('#slider11').val().replace(" ", "%20").toLowerCase() if $('#slider11').val()
            far_min = far.slice(0,(far.indexOf ",", 0)) if far
            far_max = far.slice((far.indexOf ",", 0)+1, far.length) if far
            if far is undefined
                qury = qury + ""
            else if far_min
                qury = "#{qury}" + "&by_far[min]=#{far_min}&by_far[max]=#{far_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_parking_acres
            parking_acres = $('#slider12').val().replace(" ", "%20").toLowerCase() if $('#slider12').val()
            parking_acres_min = parking_acres.slice(0,(parking_acres.indexOf ",", 0)) if parking_acres
            parking_acres_max = parking_acres.slice((parking_acres.indexOf ",", 0)+1, parking_acres.length) if parking_acres
            if parking_acres is undefined
                qury = qury + ""
            else if parking_acres_min
                qury = "#{qury}" + "&by_parking_acres[min]=#{parking_acres_min}&by_parking_acres[max]=#{parking_acres_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_development_intensity
            development_intensity = $('#slider13').val().replace(" ", "%20").toLowerCase() if $('#slider13').val()
            development_intensity_min = development_intensity.slice(0,(development_intensity.indexOf ",", 0)) if development_intensity
            development_intensity_max = development_intensity.slice((development_intensity.indexOf ",", 0)+1, development_intensity.length) if development_intensity
            if development_intensity is undefined
                qury = qury + ""
            else if development_intensity_min
                qury = "#{qury}" + "&by_development_intensity[min]=#{development_intensity_min}&by_development_intensity[max]=#{development_intensity_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_development_mix
            development_mix = $('#slider14').val().replace(" ", "%20").toLowerCase() if $('#slider14').val()
            development_mix_min = development_mix.slice(0,(development_mix.indexOf ",", 0)) if development_mix
            development_mix_max = development_mix.slice((development_mix.indexOf ",", 0)+1, development_mix.length) if development_mix
            if development_mix is undefined
                qury = qury + ""
            else if development_mix_min
                qury = "#{qury}" + "&by_development_mix[min]=#{development_mix_min}&by_development_mix[max]=#{development_mix_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_residential_density
            residential_density = $('#slider15').val().replace(" ", "%20").toLowerCase() if $('#slider15').val()
            residential_density_min = residential_density.slice(0,(residential_density.indexOf ",", 0)) if residential_density
            residential_density_max = residential_density.slice((residential_density.indexOf ",", 0)+1, residential_density.length) if residential_density
            if residential_density is undefined
                qury = qury + ""
            else if residential_density_min
                qury = "#{qury}" + "&by_residential_density[min]=#{residential_density_min}&by_residential_density[max]=#{residential_density_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_employment_density
            employment_density = $('#slider16').val().replace(" ", "%20").toLowerCase() if $('#slider16').val()
            employment_density_min = employment_density.slice(0,(employment_density.indexOf ",", 0)) if employment_density
            employment_density_max = employment_density.slice((employment_density.indexOf ",", 0)+1, employment_density.length) if employment_density
            if employment_density is undefined
                qury = qury + ""
            else if employment_density_min
                qury = "#{qury}" + "&by_employment_density[min]=#{employment_density_min}&by_employment_density[max]=#{employment_density_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_walkscore
            walkscore = $('#slider18').val().replace(" ", "%20").toLowerCase() if $('#slider18').val()
            walkscore_min = walkscore.slice(0,(walkscore.indexOf ",", 0)) if walkscore
            walkscore_max = walkscore.slice((walkscore.indexOf ",", 0)+1, walkscore.length) if walkscore
            if walkscore is undefined
                qury = qury + ""
            else if walkscore_min
                qury = "#{qury}" + "&by_walkscore[min]=#{walkscore_min}&by_walkscore[max]=#{walkscore_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_residential_pipeline
            residential_pipeline = $('#slider19').val().replace(" ", "%20").toLowerCase() if $('#slider19').val()
            residential_pipeline_min = residential_pipeline.slice(0,(residential_pipeline.indexOf ",", 0)) if residential_pipeline
            residential_pipeline_max = residential_pipeline.slice((residential_pipeline.indexOf ",", 0)+1, residential_pipeline.length) if residential_pipeline
            if residential_pipeline is undefined
                qury = qury + ""
            else if residential_pipeline_min
                qury = "#{qury}" + "&by_residential_pipeline[min]=#{residential_pipeline_min}&by_residential_pipeline[max]=#{residential_pipeline_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_commercial_pipeline
            commercial_pipeline = $('#slider20').val().replace(" ", "%20").toLowerCase() if $('#slider20').val()
            commercial_pipeline_min = commercial_pipeline.slice(0,(commercial_pipeline.indexOf ",", 0)) if commercial_pipeline
            commercial_pipeline_max = commercial_pipeline.slice((commercial_pipeline.indexOf ",", 0)+1, commercial_pipeline.length) if commercial_pipeline
            if commercial_pipeline is undefined
                qury = qury + ""
            else if commercial_pipeline_min
                qury = "#{qury}" + "&by_commercial_pipeline[min]=#{commercial_pipeline_min}&by_commercial_pipeline[max]=#{commercial_pipeline_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_employment10
            employment10 = $('#slider21').val().replace(" ", "%20").toLowerCase() if $('#slider21').val()
            employment10_min = employment10.slice(0,(employment10.indexOf ",", 0)) if employment10
            employment10_max = employment10.slice((employment10.indexOf ",", 0)+1, employment10.length) if employment10
            if employment10 is undefined
                qury = qury + ""
            else if employment10_min
                qury = "#{qury}" + "&by_employment10[min]=#{employment10_min}&by_employment10[max]=#{employment10_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_tax_revenue
            tax_revenue = $('#slider22').val().replace(" ", "%20").toLowerCase() if $('#slider22').val()
            tax_revenue_min = tax_revenue.slice(0,(tax_revenue.indexOf ",", 0)) if tax_revenue
            tax_revenue_max = tax_revenue.slice((tax_revenue.indexOf ",", 0)+1, tax_revenue.length) if tax_revenue
            if tax_revenue is undefined
                qury = qury + ""
            else if tax_revenue_min
                qury = "#{qury}" + "&by_tax_revenue[min]=#{tax_revenue_min}&by_tax_revenue[max]=#{tax_revenue_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_establishments
            establishments = $('#slider23').val().replace(" ", "%20").toLowerCase() if $('#slider23').val()
            establishments_min = establishments.slice(0,(establishments.indexOf ",", 0)) if establishments
            establishments_max = establishments.slice((establishments.indexOf ",", 0)+1, establishments.length) if establishments
            if establishments is undefined
                qury = qury + ""
            else if establishments_min
                qury = "#{qury}" + "&by_establishments[min]=#{establishments_min}&by_establishments[max]=#{establishments_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_assessed_value
            assessed_value = $('#slider24').val().replace(" ", "%20").toLowerCase() if $('#slider24').val()
            assessed_value_min = assessed_value.slice(0,(assessed_value.indexOf ",", 0)) if assessed_value
            assessed_value_max = assessed_value.slice((assessed_value.indexOf ",", 0)+1, assessed_value.length) if assessed_value
            if assessed_value is undefined
                qury = qury + ""
            else if assessed_value_min
                qury = "#{qury}" + "&by_assessed_value[min]=#{assessed_value_min}&by_assessed_value[max]=#{assessed_value_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_households10
            households10 = $('#slider25').val().replace(" ", "%20").toLowerCase() if $('#slider25').val()
            households10_min = households10.slice(0,(households10.indexOf ",", 0)) if households10
            households10_max = households10.slice((households10.indexOf ",", 0)+1, households10.length) if households10
            if households10 is undefined
                qury = qury + ""
            else if households10_min
                qury = "#{qury}" + "&by_households10[min]=#{households10_min}&by_households10[max]=#{households10_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_median_income
            median_income = $('#slider26').val().replace(" ", "%20").toLowerCase() if $('#slider26').val()
            median_income_min = median_income.slice(0,(median_income.indexOf ",", 0)) if median_income
            median_income_max = median_income.slice((median_income.indexOf ",", 0)+1, median_income.length) if median_income
            if median_income is undefined
                qury = qury + ""
            else if median_income_min
                qury = "#{qury}" + "&by_median_income[min]=#{median_income_min}&by_median_income[max]=#{median_income_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_renter_occupied
            renter_occupied = $('#slider27').val().replace(" ", "%20").toLowerCase() if $('#slider27').val()
            renter_occupied_min = renter_occupied.slice(0,(renter_occupied.indexOf ",", 0)) if renter_occupied
            renter_occupied_max = renter_occupied.slice((renter_occupied.indexOf ",", 0)+1, renter_occupied.length) if renter_occupied
            if renter_occupied is undefined
                qury = qury + ""
            else if renter_occupied_min
                qury = "#{qury}" + "&by_renter_occupied[min]=#{renter_occupied_min}&by_renter_occupied[max]=#{renter_occupied_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_nocar_households
            nocar_households = $('#slider28').val().replace(" ", "%20").toLowerCase() if $('#slider28').val()
            nocar_households_min = nocar_households.slice(0,(nocar_households.indexOf ",", 0)) if nocar_households
            nocar_households_max = nocar_households.slice((nocar_households.indexOf ",", 0)+1, nocar_households.length) if nocar_households
            if nocar_households is undefined
                qury = qury + ""
            else if nocar_households_min
                qury = "#{qury}" + "&by_nocar_households[min]=#{nocar_households_min}&by_nocar_households[max]=#{nocar_households_max}".replace(/\s*\(.*?\)\s*/g, "")
            ## by_education_attainment
            education_attainment = $('#slider29').val().replace(" ", "%20").toLowerCase() if $('#slider29').val()
            education_attainment_min = education_attainment.slice(0,(education_attainment.indexOf ",", 0)) if education_attainment
            education_attainment_max = education_attainment.slice((education_attainment.indexOf ",", 0)+1, education_attainment.length) if education_attainment
            if education_attainment is undefined
                qury = qury + ""
            else if education_attainment_min
                qury = "#{qury}" + "&by_education_attainment[min]=#{education_attainment_min}&by_education_attainment[max]=#{education_attainment_max}".replace(/\s*\(.*?\)\s*/g, "")
            
            query = "#{qury}"
            # here would are the basic validation and if passed the vent will trigger
            #urlstr = "/search.json?" + "#{gon.query}" + "#{query}".replace(/\s*\(.*?\)\s*/g, "")
            #console.log urlstr
            gon.query = "#{query}".replace(/\s*\(.*?\)\s*/g, "")

            App.vent.trigger "searchFired", gon.query
            
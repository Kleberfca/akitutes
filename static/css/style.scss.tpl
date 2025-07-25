{# /*============================================================================
style.scss.tpl

    -This file contains all the theme non critical styles wich will be loaded asynchronously
    -Rest of styling can be found in:
        -static/css/custom.scss.tpl --> For color and font styles related to config/settings.txt
        -snipplets/css/critical-css.tpl --> For critical CSS rendered inline before the rest of the site

==============================================================================*/ #}

{# /*============================================================================
  Table of Contents

  #External CSS libraries and plugins
    // Not critical part of Bootstrap v3.2.0
  #Components
    // Mixins
    // Animations
    // Wrappers
    // SVG Icons
    // Buttons and links
    // Chips
    // Dividers
    // Forms
    // Alerts and notifications
    // Modals
    // Tabs
    // Cards
    // Pagination
    // User content
    // Tables
    // Images
    // Banners
    // Modules with image and text
    // Social Widgets
    // Video
    // Captcha
    // Placeholder
  #Header and nav
    // Nav desktop
    // Search
  #Product grid
    // Filters
  #Product detail
    // Image
    // Form and info
  #Footer
  #Contact page
  #Cart page
    // Cart table
    // Ajax cart
  #Media queries
    // Min width 770px
      // Components
      // Product detail
    // Max width 767px
      //// Components
      //// Header and nav
      //// Product grid
      //// Product detail
      //// Footer
      //// Cart page
  #Critical path utilities

==============================================================================*/ #}

{#/*============================================================================
  #External CSS libraries and plugins
==============================================================================*/#}

{# /* // Not critical part of Bootstrap v3.2.0 */ #}

@font-face{font-family:'Glyphicons Halflings';src:url(../fonts/glyphicons-halflings-regular.eot);src:url(../fonts/glyphicons-halflings-regular.eot?#iefix) format('embedded-opentype'),url(../fonts/glyphicons-halflings-regular.woff) format('woff'),url(../fonts/glyphicons-halflings-regular.ttf) format('truetype'),url(../fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular) format('svg')}.glyphicon{position:relative;top:1px;display:inline-block;font-family:'Glyphicons Halflings';font-style:normal;font-weight:400;line-height:1;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.glyphicon-asterisk:before{content:"\2a"}.glyphicon-plus:before{content:"\2b"}.glyphicon-euro:before{content:"\20ac"}.glyphicon-minus:before{content:"\2212"}.glyphicon-cloud:before{content:"\2601"}.glyphicon-envelope:before{content:"\2709"}.glyphicon-pencil:before{content:"\270f"}.glyphicon-glass:before{content:"\e001"}.glyphicon-music:before{content:"\e002"}.glyphicon-search:before{content:"\e003"}.glyphicon-heart:before{content:"\e005"}.glyphicon-star:before{content:"\e006"}.glyphicon-star-empty:before{content:"\e007"}.glyphicon-user:before{content:"\e008"}.glyphicon-film:before{content:"\e009"}.glyphicon-th-large:before{content:"\e010"}.glyphicon-th:before{content:"\e011"}.glyphicon-th-list:before{content:"\e012"}.glyphicon-ok:before{content:"\e013"}.glyphicon-remove:before{content:"\e014"}.glyphicon-zoom-in:before{content:"\e015"}.glyphicon-zoom-out:before{content:"\e016"}.glyphicon-off:before{content:"\e017"}.glyphicon-signal:before{content:"\e018"}.glyphicon-cog:before{content:"\e019"}.glyphicon-trash:before{content:"\e020"}.glyphicon-home:before{content:"\e021"}.glyphicon-file:before{content:"\e022"}.glyphicon-time:before{content:"\e023"}.glyphicon-road:before{content:"\e024"}.glyphicon-download-alt:before{content:"\e025"}.glyphicon-download:before{content:"\e026"}.glyphicon-upload:before{content:"\e027"}.glyphicon-inbox:before{content:"\e028"}.glyphicon-play-circle:before{content:"\e029"}.glyphicon-repeat:before{content:"\e030"}.glyphicon-refresh:before{content:"\e031"}.glyphicon-list-alt:before{content:"\e032"}.glyphicon-lock:before{content:"\e033"}.glyphicon-flag:before{content:"\e034"}.glyphicon-headphones:before{content:"\e035"}.glyphicon-volume-off:before{content:"\e036"}.glyphicon-volume-down:before{content:"\e037"}.glyphicon-volume-up:before{content:"\e038"}.glyphicon-qrcode:before{content:"\e039"}.glyphicon-barcode:before{content:"\e040"}.glyphicon-tag:before{content:"\e041"}.glyphicon-tags:before{content:"\e042"}.glyphicon-book:before{content:"\e043"}.glyphicon-bookmark:before{content:"\e044"}.glyphicon-print:before{content:"\e045"}.glyphicon-camera:before{content:"\e046"}.glyphicon-font:before{content:"\e047"}.glyphicon-bold:before{content:"\e048"}.glyphicon-italic:before{content:"\e049"}.glyphicon-text-height:before{content:"\e050"}.glyphicon-text-width:before{content:"\e051"}.glyphicon-align-left:before{content:"\e052"}.glyphicon-align-center:before{content:"\e053"}.glyphicon-align-right:before{content:"\e054"}.glyphicon-align-justify:before{content:"\e055"}.glyphicon-list:before{content:"\e056"}.glyphicon-indent-left:before{content:"\e057"}.glyphicon-indent-right:before{content:"\e058"}.glyphicon-facetime-video:before{content:"\e059"}.glyphicon-picture:before{content:"\e060"}.glyphicon-map-marker:before{content:"\e062"}.glyphicon-adjust:before{content:"\e063"}.glyphicon-tint:before{content:"\e064"}.glyphicon-edit:before{content:"\e065"}.glyphicon-share:before{content:"\e066"}.glyphicon-check:before{content:"\e067"}.glyphicon-move:before{content:"\e068"}.glyphicon-step-backward:before{content:"\e069"}.glyphicon-fast-backward:before{content:"\e070"}.glyphicon-backward:before{content:"\e071"}.glyphicon-play:before{content:"\e072"}.glyphicon-pause:before{content:"\e073"}.glyphicon-stop:before{content:"\e074"}.glyphicon-forward:before{content:"\e075"}.glyphicon-fast-forward:before{content:"\e076"}.glyphicon-step-forward:before{content:"\e077"}.glyphicon-eject:before{content:"\e078"}.glyphicon-chevron-left:before{content:"\e079"}.glyphicon-chevron-right:before{content:"\e080"}.glyphicon-plus-sign:before{content:"\e081"}.glyphicon-minus-sign:before{content:"\e082"}.glyphicon-remove-sign:before{content:"\e083"}.glyphicon-ok-sign:before{content:"\e084"}.glyphicon-question-sign:before{content:"\e085"}.glyphicon-info-sign:before{content:"\e086"}.glyphicon-screenshot:before{content:"\e087"}.glyphicon-remove-circle:before{content:"\e088"}.glyphicon-ok-circle:before{content:"\e089"}.glyphicon-ban-circle:before{content:"\e090"}.glyphicon-arrow-left:before{content:"\e091"}.glyphicon-arrow-right:before{content:"\e092"}.glyphicon-arrow-up:before{content:"\e093"}.glyphicon-arrow-down:before{content:"\e094"}.glyphicon-share-alt:before{content:"\e095"}.glyphicon-resize-full:before{content:"\e096"}.glyphicon-resize-small:before{content:"\e097"}.glyphicon-exclamation-sign:before{content:"\e101"}.glyphicon-gift:before{content:"\e102"}.glyphicon-leaf:before{content:"\e103"}.glyphicon-fire:before{content:"\e104"}.glyphicon-eye-open:before{content:"\e105"}.glyphicon-eye-close:before{content:"\e106"}.glyphicon-warning-sign:before{content:"\e107"}.glyphicon-plane:before{content:"\e108"}.glyphicon-calendar:before{content:"\e109"}.glyphicon-random:before{content:"\e110"}.glyphicon-comment:before{content:"\e111"}.glyphicon-magnet:before{content:"\e112"}.glyphicon-chevron-up:before{content:"\e113"}.glyphicon-chevron-down:before{content:"\e114"}.glyphicon-retweet:before{content:"\e115"}.glyphicon-shopping-cart:before{content:"\e116"}.glyphicon-folder-close:before{content:"\e117"}.glyphicon-folder-open:before{content:"\e118"}.glyphicon-resize-vertical:before{content:"\e119"}.glyphicon-resize-horizontal:before{content:"\e120"}.glyphicon-hdd:before{content:"\e121"}.glyphicon-bullhorn:before{content:"\e122"}.glyphicon-bell:before{content:"\e123"}.glyphicon-certificate:before{content:"\e124"}.glyphicon-thumbs-up:before{content:"\e125"}.glyphicon-thumbs-down:before{content:"\e126"}.glyphicon-hand-right:before{content:"\e127"}.glyphicon-hand-left:before{content:"\e128"}.glyphicon-hand-up:before{content:"\e129"}.glyphicon-hand-down:before{content:"\e130"}.glyphicon-circle-arrow-right:before{content:"\e131"}.glyphicon-circle-arrow-left:before{content:"\e132"}.glyphicon-circle-arrow-up:before{content:"\e133"}.glyphicon-circle-arrow-down:before{content:"\e134"}.glyphicon-globe:before{content:"\e135"}.glyphicon-wrench:before{content:"\e136"}.glyphicon-tasks:before{content:"\e137"}.glyphicon-filter:before{content:"\e138"}.glyphicon-briefcase:before{content:"\e139"}.glyphicon-fullscreen:before{content:"\e140"}.glyphicon-dashboard:before{content:"\e141"}.glyphicon-paperclip:before{content:"\e142"}.glyphicon-heart-empty:before{content:"\e143"}.glyphicon-link:before{content:"\e144"}.glyphicon-phone:before{content:"\e145"}.glyphicon-pushpin:before{content:"\e146"}.glyphicon-usd:before{content:"\e148"}.glyphicon-gbp:before{content:"\e149"}.glyphicon-sort:before{content:"\e150"}.glyphicon-sort-by-alphabet:before{content:"\e151"}.glyphicon-sort-by-alphabet-alt:before{content:"\e152"}.glyphicon-sort-by-order:before{content:"\e153"}.glyphicon-sort-by-order-alt:before{content:"\e154"}.glyphicon-sort-by-attributes:before{content:"\e155"}.glyphicon-sort-by-attributes-alt:before{content:"\e156"}.glyphicon-unchecked:before{content:"\e157"}.glyphicon-expand:before{content:"\e158"}.glyphicon-collapse-down:before{content:"\e159"}.glyphicon-collapse-up:before{content:"\e160"}.glyphicon-log-in:before{content:"\e161"}.glyphicon-flash:before{content:"\e162"}.glyphicon-log-out:before{content:"\e163"}.glyphicon-new-window:before{content:"\e164"}.glyphicon-record:before{content:"\e165"}.glyphicon-save:before{content:"\e166"}.glyphicon-open:before{content:"\e167"}.glyphicon-saved:before{content:"\e168"}.glyphicon-import:before{content:"\e169"}.glyphicon-export:before{content:"\e170"}.glyphicon-send:before{content:"\e171"}.glyphicon-floppy-disk:before{content:"\e172"}.glyphicon-floppy-saved:before{content:"\e173"}.glyphicon-floppy-remove:before{content:"\e174"}.glyphicon-floppy-save:before{content:"\e175"}.glyphicon-floppy-open:before{content:"\e176"}.glyphicon-credit-card:before{content:"\e177"}.glyphicon-transfer:before{content:"\e178"}.glyphicon-cutlery:before{content:"\e179"}.glyphicon-header:before{content:"\e180"}.glyphicon-compressed:before{content:"\e181"}.glyphicon-earphone:before{content:"\e182"}.glyphicon-phone-alt:before{content:"\e183"}.glyphicon-tower:before{content:"\e184"}.glyphicon-stats:before{content:"\e185"}.glyphicon-sd-video:before{content:"\e186"}.glyphicon-hd-video:before{content:"\e187"}.glyphicon-subtitles:before{content:"\e188"}.glyphicon-sound-stereo:before{content:"\e189"}.glyphicon-sound-dolby:before{content:"\e190"}.glyphicon-sound-5-1:before{content:"\e191"}.glyphicon-sound-6-1:before{content:"\e192"}.glyphicon-sound-7-1:before{content:"\e193"}.glyphicon-copyright-mark:before{content:"\e194"}.glyphicon-registration-mark:before{content:"\e195"}.glyphicon-cloud-download:before{content:"\e197"}.glyphicon-cloud-upload:before{content:"\e198"}.glyphicon-tree-conifer:before{content:"\e199"}.glyphicon-tree-deciduous:before{content:"\e200"}dl{margin-top:0;margin-bottom:20px}dt,dd{line-height:1.42857143}dt{font-weight:700}dd{margin-left:0}@media (min-width:768px){.dl-horizontal dt{float:left;width:160px;overflow:hidden;clear:left;text-align:right;text-overflow:ellipsis;white-space:nowrap}.dl-horizontal dd{margin-left:180px}}abbr[title],abbr[data-original-title]{cursor:help;border-bottom:1px dotted #777}.initialism{font-size:90%;text-transform:uppercase}blockquote{padding:10px 20px;margin:0 0 20px;font-size:17.5px;border-left:5px solid #eee}blockquote p:last-child,blockquote ul:last-child,blockquote ol:last-child{margin-bottom:0}blockquote footer,blockquote small,blockquote .small{display:block;font-size:80%;line-height:1.42857143;color:#777}blockquote footer:before,blockquote small:before,blockquote .small:before{content:'\2014 \00A0'}.blockquote-reverse,blockquote.pull-right{padding-right:15px;padding-left:0;text-align:right;border-right:5px solid #eee;border-left:0}.blockquote-reverse footer:before,blockquote.pull-right footer:before,.blockquote-reverse small:before,blockquote.pull-right small:before,.blockquote-reverse .small:before,blockquote.pull-right .small:before{content:''}.blockquote-reverse footer:after,blockquote.pull-right footer:after,.blockquote-reverse small:after,blockquote.pull-right small:after,.blockquote-reverse .small:after,blockquote.pull-right .small:after{content:'\00A0 \2014'}blockquote:before,blockquote:after{content:""}address{margin-bottom:20px;font-style:normal;line-height:1.42857143}code,kbd,pre,samp{font-family:Menlo,Monaco,Consolas,"Courier New",monospace}code{padding:2px 4px;font-size:90%;color:#c7254e;background-color:#f9f2f4;border-radius:4px}kbd{padding:2px 4px;font-size:90%;color:#fff;background-color:#333;border-radius:3px;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.25);box-shadow:inset 0 -1px 0 rgba(0,0,0,.25)}kbd kbd{padding:0;font-size:100%;-webkit-box-shadow:none;box-shadow:none}pre{display:block;padding:9.5px;margin:0 0 10px;font-size:13px;line-height:1.42857143;color:#333;word-break:break-all;word-wrap:break-word;background-color:#f5f5f5;border:1px solid #ccc;border-radius:4px}pre code{padding:0;font-size:inherit;color:inherit;white-space:pre-wrap;background-color:transparent;border-radius:0}.pre-scrollable{max-height:340px;overflow-y:scroll}table{background-color:transparent}th{text-align:left}.table{width:100%;max-width:100%;margin-bottom:20px}.table>thead>tr>th,.table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>td,.table>tbody>tr>td,.table>tfoot>tr>td{padding:8px;line-height:1.42857143;vertical-align:top;border-top:1px solid #ddd}.table>thead>tr>th{vertical-align:bottom;border-bottom:2px solid #ddd}.table>caption+thead>tr:first-child>th,.table>colgroup+thead>tr:first-child>th,.table>thead:first-child>tr:first-child>th,.table>caption+thead>tr:first-child>td,.table>colgroup+thead>tr:first-child>td,.table>thead:first-child>tr:first-child>td{border-top:0}.table>tbody+tbody{border-top:2px solid #ddd}.table .table{background-color:#fff}.table-condensed>thead>tr>th,.table-condensed>tbody>tr>th,.table-condensed>tfoot>tr>th,.table-condensed>thead>tr>td,.table-condensed>tbody>tr>td,.table-condensed>tfoot>tr>td{padding:5px}.table-bordered{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>tbody>tr>th,.table-bordered>tfoot>tr>th,.table-bordered>thead>tr>td,.table-bordered>tbody>tr>td,.table-bordered>tfoot>tr>td{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>thead>tr>td{border-bottom-width:2px}.table-striped>tbody>tr:nth-child(odd)>td,.table-striped>tbody>tr:nth-child(odd)>th{background-color:#f9f9f9}.table-hover>tbody>tr:hover>td,.table-hover>tbody>tr:hover>th{background-color:#f5f5f5}table col[class*=col-]{position:static;display:table-column;float:none}table td[class*=col-],table th[class*=col-]{position:static;display:table-cell;float:none}.table>thead>tr>td.active,.table>tbody>tr>td.active,.table>tfoot>tr>td.active,.table>thead>tr>th.active,.table>tbody>tr>th.active,.table>tfoot>tr>th.active,.table>thead>tr.active>td,.table>tbody>tr.active>td,.table>tfoot>tr.active>td,.table>thead>tr.active>th,.table>tbody>tr.active>th,.table>tfoot>tr.active>th{background-color:#f5f5f5}.table-hover>tbody>tr>td.active:hover,.table-hover>tbody>tr>th.active:hover,.table-hover>tbody>tr.active:hover>td,.table-hover>tbody>tr:hover>.active,.table-hover>tbody>tr.active:hover>th{background-color:#e8e8e8}.table>thead>tr>td.success,.table>tbody>tr>td.success,.table>tfoot>tr>td.success,.table>thead>tr>th.success,.table>tbody>tr>th.success,.table>tfoot>tr>th.success,.table>thead>tr.success>td,.table>tbody>tr.success>td,.table>tfoot>tr.success>td,.table>thead>tr.success>th,.table>tbody>tr.success>th,.table>tfoot>tr.success>th{background-color:#dff0d8}.table-hover>tbody>tr>td.success:hover,.table-hover>tbody>tr>th.success:hover,.table-hover>tbody>tr.success:hover>td,.table-hover>tbody>tr:hover>.success,.table-hover>tbody>tr.success:hover>th{background-color:#d0e9c6}.table>thead>tr>td.info,.table>tbody>tr>td.info,.table>tfoot>tr>td.info,.table>thead>tr>th.info,.table>tbody>tr>th.info,.table>tfoot>tr>th.info,.table>thead>tr.info>td,.table>tbody>tr.info>td,.table>tfoot>tr.info>td,.table>thead>tr.info>th,.table>tbody>tr.info>th,.table>tfoot>tr.info>th{background-color:#d9edf7}.table-hover>tbody>tr>td.info:hover,.table-hover>tbody>tr>th.info:hover,.table-hover>tbody>tr.info:hover>td,.table-hover>tbody>tr:hover>.info,.table-hover>tbody>tr.info:hover>th{background-color:#c4e3f3}.table>thead>tr>td.warning,.table>tbody>tr>td.warning,.table>tfoot>tr>td.warning,.table>thead>tr>th.warning,.table>tbody>tr>th.warning,.table>tfoot>tr>th.warning,.table>thead>tr.warning>td,.table>tbody>tr.warning>td,.table>tfoot>tr.warning>td,.table>thead>tr.warning>th,.table>tbody>tr.warning>th,.table>tfoot>tr.warning>th{background-color:#fcf8e3}.table-hover>tbody>tr>td.warning:hover,.table-hover>tbody>tr>th.warning:hover,.table-hover>tbody>tr.warning:hover>td,.table-hover>tbody>tr:hover>.warning,.table-hover>tbody>tr.warning:hover>th{background-color:#faf2cc}.table>thead>tr>td.danger,.table>tbody>tr>td.danger,.table>tfoot>tr>td.danger,.table>thead>tr>th.danger,.table>tbody>tr>th.danger,.table>tfoot>tr>th.danger,.table>thead>tr.danger>td,.table>tbody>tr.danger>td,.table>tfoot>tr.danger>td,.table>thead>tr.danger>th,.table>tbody>tr.danger>th,.table>tfoot>tr.danger>th{background-color:#f2dede}.table-hover>tbody>tr>td.danger:hover,.table-hover>tbody>tr>th.danger:hover,.table-hover>tbody>tr.danger:hover>td,.table-hover>tbody>tr:hover>.danger,.table-hover>tbody>tr.danger:hover>th{background-color:#ebcccc}@media screen and (max-width:767px){.table-responsive{width:100%;margin-bottom:15px;overflow-x:auto;overflow-y:hidden;-webkit-overflow-scrolling:touch;-ms-overflow-style:-ms-autohiding-scrollbar;border:1px solid #ddd}.table-responsive>.table{margin-bottom:0}.table-responsive>.table>thead>tr>th,.table-responsive>.table>tbody>tr>th,.table-responsive>.table>tfoot>tr>th,.table-responsive>.table>thead>tr>td,.table-responsive>.table>tbody>tr>td,.table-responsive>.table>tfoot>tr>td{white-space:nowrap}.table-responsive>.table-bordered{border:0}.table-responsive>.table-bordered>thead>tr>th:first-child,.table-responsive>.table-bordered>tbody>tr>th:first-child,.table-responsive>.table-bordered>tfoot>tr>th:first-child,.table-responsive>.table-bordered>thead>tr>td:first-child,.table-responsive>.table-bordered>tbody>tr>td:first-child,.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.table-responsive>.table-bordered>thead>tr>th:last-child,.table-responsive>.table-bordered>tbody>tr>th:last-child,.table-responsive>.table-bordered>tfoot>tr>th:last-child,.table-responsive>.table-bordered>thead>tr>td:last-child,.table-responsive>.table-bordered>tbody>tr>td:last-child,.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.table-responsive>.table-bordered>tbody>tr:last-child>th,.table-responsive>.table-bordered>tfoot>tr:last-child>th,.table-responsive>.table-bordered>tbody>tr:last-child>td,.table-responsive>.table-bordered>tfoot>tr:last-child>td{border-bottom:0}}fieldset{min-width:0;padding:0;margin:0;border:0}legend{display:block;width:100%;padding:0;margin-bottom:20px;font-size:21px;line-height:inherit;color:#333;border:0;border-bottom:1px solid #e5e5e5}.btn-group,.btn-group-vertical{position:relative;display:inline-block;vertical-align:middle}.btn-group>.btn,.btn-group-vertical>.btn{position:relative;float:left}.btn-group>.btn:hover,.btn-group-vertical>.btn:hover,.btn-group>.btn:focus,.btn-group-vertical>.btn:focus,.btn-group>.btn:active,.btn-group-vertical>.btn:active,.btn-group>.btn.active,.btn-group-vertical>.btn.active{z-index:2}.btn-group>.btn:focus,.btn-group-vertical>.btn:focus{outline:0}.btn-group .btn+.btn,.btn-group .btn+.btn-group,.btn-group .btn-group+.btn,.btn-group .btn-group+.btn-group{margin-left:-1px}.btn-toolbar{margin-left:-5px}.btn-toolbar .btn-group,.btn-toolbar .input-group{float:left}.btn-toolbar>.btn,.btn-toolbar>.btn-group,.btn-toolbar>.input-group{margin-left:5px}.btn-group>.btn:not(:first-child):not(:last-child):not(.dropdown-toggle){border-radius:0}.btn-group>.btn:first-child{margin-left:0}.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle){border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn:last-child:not(:first-child),.btn-group>.dropdown-toggle:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.btn-group>.btn-group{float:left}.btn-group>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group>.btn-group:first-child>.btn:last-child,.btn-group>.btn-group:first-child>.dropdown-toggle{border-top-right-radius:0;border-bottom-right-radius:0}.btn-group>.btn-group:last-child>.btn:first-child{border-top-left-radius:0;border-bottom-left-radius:0}.btn-group .dropdown-toggle:active,.btn-group.open .dropdown-toggle{outline:0}.btn-group>.btn+.dropdown-toggle{padding-right:8px;padding-left:8px}.btn-group>.btn-lg+.dropdown-toggle{padding-right:12px;padding-left:12px}.btn-group.open .dropdown-toggle{-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,.125);box-shadow:inset 0 3px 5px rgba(0,0,0,.125)}.btn-group.open .dropdown-toggle.btn-link{-webkit-box-shadow:none;box-shadow:none}.btn .caret{margin-left:0}.btn-lg .caret{border-width:5px 5px 0;border-bottom-width:0}.dropup .btn-lg .caret{border-width:0 5px 5px}.btn-group-vertical>.btn,.btn-group-vertical>.btn-group,.btn-group-vertical>.btn-group>.btn{display:block;float:none;width:100%;max-width:100%}.btn-group-vertical>.btn-group>.btn{float:none}.btn-group-vertical>.btn+.btn,.btn-group-vertical>.btn+.btn-group,.btn-group-vertical>.btn-group+.btn,.btn-group-vertical>.btn-group+.btn-group{margin-top:-1px;margin-left:0}.btn-group-vertical>.btn:not(:first-child):not(:last-child){border-radius:0}.btn-group-vertical>.btn:first-child:not(:last-child){border-top-right-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn:last-child:not(:first-child){border-top-left-radius:0;border-top-right-radius:0;border-bottom-left-radius:4px}.btn-group-vertical>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group-vertical>.btn-group:first-child:not(:last-child)>.btn:last-child,.btn-group-vertical>.btn-group:first-child:not(:last-child)>.dropdown-toggle{border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:last-child:not(:first-child)>.btn:first-child{border-top-left-radius:0;border-top-right-radius:0}.btn-group-justified{display:table;width:100%;table-layout:fixed;border-collapse:separate}.btn-group-justified>.btn,.btn-group-justified>.btn-group{display:table-cell;float:none;width:1%}.btn-group-justified>.btn-group .btn{width:100%}.btn-group-justified>.btn-group .dropdown-menu{left:auto}[data-toggle=buttons]>.btn>input[type=radio],[data-toggle=buttons]>.btn>input[type=checkbox]{position:absolute;z-index:-1;filter:alpha(opacity=0);opacity:0}.input-group{position:relative;display:table;border-collapse:separate}.input-group[class*=col-]{float:none;padding-right:0;padding-left:0}.input-group .form-control{position:relative;z-index:2;float:left;width:100%;margin-bottom:0}.input-group-lg>.form-control,.input-group-lg>.input-group-addon,.input-group-lg>.input-group-btn>.btn{height:46px;padding:10px 16px;font-size:18px;line-height:1.33;border-radius:6px}select.input-group-lg>.form-control,select.input-group-lg>.input-group-addon,select.input-group-lg>.input-group-btn>.btn{height:46px;line-height:46px}textarea.input-group-lg>.form-control,textarea.input-group-lg>.input-group-addon,textarea.input-group-lg>.input-group-btn>.btn,select[multiple].input-group-lg>.form-control,select[multiple].input-group-lg>.input-group-addon,select[multiple].input-group-lg>.input-group-btn>.btn{height:auto}.input-group-sm>.form-control,.input-group-sm>.input-group-addon,.input-group-sm>.input-group-btn>.btn{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-group-sm>.form-control,select.input-group-sm>.input-group-addon,select.input-group-sm>.input-group-btn>.btn{height:30px;line-height:30px}textarea.input-group-sm>.form-control,textarea.input-group-sm>.input-group-addon,textarea.input-group-sm>.input-group-btn>.btn,select[multiple].input-group-sm>.form-control,select[multiple].input-group-sm>.input-group-addon,select[multiple].input-group-sm>.input-group-btn>.btn{height:auto}.input-group-addon,.input-group-btn,.input-group .form-control{display:table-cell}.input-group-addon:not(:first-child):not(:last-child),.input-group-btn:not(:first-child):not(:last-child),.input-group .form-control:not(:first-child):not(:last-child){border-radius:0}.input-group-addon,.input-group-btn{width:1%;white-space:nowrap;vertical-align:middle}.input-group-addon{padding:6px 12px;font-size:14px;font-weight:400;line-height:1;color:#555;text-align:center;background-color:#eee;border:1px solid #ccc;border-radius:4px}.input-group-addon.input-sm{padding:5px 10px;font-size:12px;border-radius:3px}.input-group-addon.input-lg{padding:10px 16px;font-size:18px;border-radius:6px}.input-group-addon input[type=radio],.input-group-addon input[type=checkbox]{margin-top:0}.input-group .form-control:first-child,.input-group-addon:first-child,.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group>.btn,.input-group-btn:first-child>.dropdown-toggle,.input-group-btn:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group-btn:last-child>.btn-group:not(:last-child)>.btn{border-top-right-radius:0;border-bottom-right-radius:0}.input-group-addon:first-child{border-right:0}.input-group .form-control:last-child,.input-group-addon:last-child,.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group>.btn,.input-group-btn:last-child>.dropdown-toggle,.input-group-btn:first-child>.btn:not(:first-child),.input-group-btn:first-child>.btn-group:not(:first-child)>.btn{border-top-left-radius:0;border-bottom-left-radius:0}.input-group-addon:last-child{border-left:0}.input-group-btn{position:relative;font-size:0;white-space:nowrap}.input-group-btn>.btn{position:relative}.input-group-btn>.btn+.btn{margin-left:-1px}.input-group-btn>.btn:hover,.input-group-btn>.btn:focus,.input-group-btn>.btn:active{z-index:2}.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group{margin-right:-1px}.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group{margin-left:-1px}.nav{padding-left:0;margin-bottom:0;list-style:none}.nav>li{position:relative;display:block}.nav>li>a{position:relative;display:block;padding:10px 15px}.nav>li>a:hover,.nav>li>a:focus{text-decoration:none;background-color:#eee}.nav>li.disabled>a{color:#777}.nav>li.disabled>a:hover,.nav>li.disabled>a:focus{color:#777;text-decoration:none;cursor:not-allowed;background-color:transparent}.nav .open>a,.nav .open>a:hover,.nav .open>a:focus{background-color:#eee;border-color:#428bca}.nav .nav-divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.nav>li>a>img{max-width:none}.nav-tabs{border-bottom:1px solid #ddd}.nav-tabs>li{float:left;margin-bottom:-1px}.nav-tabs>li>a{margin-right:2px;line-height:1.42857143;border:1px solid transparent;border-radius:4px 4px 0 0}.nav-tabs>li>a:hover{border-color:#eee #eee #ddd}.nav-tabs>li.active>a,.nav-tabs>li.active>a:hover,.nav-tabs>li.active>a:focus{color:#555;cursor:default;background-color:#fff;border:1px solid #ddd;border-bottom-color:transparent}.nav-tabs.nav-justified{width:100%;border-bottom:0}.nav-tabs.nav-justified>li{float:none}.nav-tabs.nav-justified>li>a{margin-bottom:5px;text-align:center}.nav-tabs.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-tabs.nav-justified>li{display:table-cell;width:1%}.nav-tabs.nav-justified>li>a{margin-bottom:0}}.nav-tabs.nav-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs.nav-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border-bottom-color:#fff}}.nav-pills>li{float:left}.nav-pills>li>a{border-radius:4px}.nav-pills>li+li{margin-left:2px}.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus{color:#fff;background-color:#428bca}.nav-stacked>li{float:none}.nav-stacked>li+li{margin-top:2px;margin-left:0}.nav-justified{width:100%}.nav-justified>li{float:none}.nav-justified>li>a{margin-bottom:5px;text-align:center}.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-justified>li{display:table-cell;width:1%}.nav-justified>li>a{margin-bottom:0}}.nav-tabs-justified{border-bottom:0}.nav-tabs-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border-bottom-color:#fff}}.tab-content>.tab-pane{display:none}.tab-content>.active{display:block}.nav-tabs .dropdown-menu{margin-top:-1px;border-top-left-radius:0;border-top-right-radius:0}.navbar{position:relative;min-height:50px;margin-bottom:20px;border:1px solid transparent}@media (min-width:768px){.navbar{border-radius:4px}}@media (min-width:768px){.navbar-header{float:left}}.navbar-collapse{padding-right:15px;padding-left:15px;overflow-x:visible;-webkit-overflow-scrolling:touch;border-top:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1)}.navbar-collapse.in{overflow-y:auto}@media (min-width:768px){.navbar-collapse{width:auto;border-top:0;-webkit-box-shadow:none;box-shadow:none}.navbar-collapse.collapse{display:block!important;height:auto!important;padding-bottom:0;overflow:visible!important}.navbar-collapse.in{overflow-y:visible}.navbar-fixed-top .navbar-collapse,.navbar-static-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{padding-right:0;padding-left:0}}.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:340px}@media (max-width:480px) and (orientation:landscape){.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:200px}}.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:0;margin-left:0}}.navbar-static-top{z-index:1000;border-width:0 0 1px}@media (min-width:768px){.navbar-static-top{border-radius:0}}.navbar-fixed-top,.navbar-fixed-bottom{position:fixed;right:0;left:0;z-index:1030;-webkit-transform:translate3d(0,0,0);-o-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}@media (min-width:768px){.navbar-fixed-top,.navbar-fixed-bottom{border-radius:0}}.navbar-fixed-top{top:0;border-width:0 0 1px}.navbar-fixed-bottom{bottom:0;margin-bottom:0;border-width:1px 0 0}.navbar-brand{float:left;height:50px;padding:15px 15px;font-size:18px;line-height:20px}.navbar-brand:hover,.navbar-brand:focus{text-decoration:none}@media (min-width:768px){.navbar>.container .navbar-brand,.navbar>.container-fluid .navbar-brand{margin-left:-15px}}.navbar-toggle{position:relative;float:right;padding:9px 10px;margin-top:8px;margin-right:15px;margin-bottom:8px;background-color:transparent;background-image:none;border:1px solid transparent;border-radius:4px}.navbar-toggle:focus{outline:0}.navbar-toggle .icon-bar{display:block;width:22px;height:2px;border-radius:1px}.navbar-toggle .icon-bar+.icon-bar{margin-top:4px}@media (min-width:768px){.navbar-toggle{display:none}}.navbar-nav{margin:7.5px -15px}.navbar-nav>li>a{padding-top:10px;padding-bottom:10px;line-height:20px}@media (max-width:767px){.navbar-nav .open .dropdown-menu{position:static;float:none;width:auto;margin-top:0;background-color:transparent;border:0;-webkit-box-shadow:none;box-shadow:none}.navbar-nav .open .dropdown-menu>li>a,.navbar-nav .open .dropdown-menu .dropdown-header{padding:5px 15px 5px 25px}.navbar-nav .open .dropdown-menu>li>a{line-height:20px}.navbar-nav .open .dropdown-menu>li>a:hover,.navbar-nav .open .dropdown-menu>li>a:focus{background-image:none}}@media (min-width:768px){.navbar-nav{float:left;margin:0}.navbar-nav>li{float:left}.navbar-nav>li>a{padding-top:15px;padding-bottom:15px}.navbar-nav.navbar-right:last-child{margin-right:-15px}}@media (min-width:768px){.navbar-left{float:left!important}.navbar-right{float:right!important}}.navbar-form{padding:10px 15px;margin-top:8px;margin-right:-15px;margin-bottom:8px;margin-left:-15px;border-top:1px solid transparent;border-bottom:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.1);box-shadow:inset 0 1px 0 rgba(255,255,255,.1),0 1px 0 rgba(255,255,255,.1)}@media (min-width:768px){.navbar-form .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.navbar-form .form-control{display:inline-block;width:auto;vertical-align:middle}.navbar-form .input-group{display:inline-table;vertical-align:middle}.navbar-form .input-group .input-group-addon,.navbar-form .input-group .input-group-btn,.navbar-form .input-group .form-control{width:auto}.navbar-form .input-group>.form-control{width:100%}.navbar-form .control-label{margin-bottom:0;vertical-align:middle}.navbar-form .radio,.navbar-form .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.navbar-form .radio label,.navbar-form .checkbox label{padding-left:0}.navbar-form .radio input[type=radio],.navbar-form .checkbox input[type=checkbox]{position:relative;margin-left:0}.navbar-form .has-feedback .form-control-feedback{top:0}}@media (max-width:767px){.navbar-form .form-group{margin-bottom:5px}}@media (min-width:768px){.navbar-form{width:auto;padding-top:0;padding-bottom:0;margin-right:0;margin-left:0;border:0;-webkit-box-shadow:none;box-shadow:none}.navbar-form.navbar-right:last-child{margin-right:-15px}}.navbar-nav>li>.dropdown-menu{margin-top:0;border-top-left-radius:0;border-top-right-radius:0}.navbar-fixed-bottom .navbar-nav>li>.dropdown-menu{border-bottom-right-radius:0;border-bottom-left-radius:0}.navbar-btn{margin-top:8px;margin-bottom:8px}.navbar-btn.btn-sm{margin-top:10px;margin-bottom:10px}.navbar-btn.btn-xs{margin-top:14px;margin-bottom:14px}.navbar-text{margin-top:15px;margin-bottom:15px}@media (min-width:768px){.navbar-text{float:left;margin-right:15px;margin-left:15px}.navbar-text.navbar-right:last-child{margin-right:0}}.navbar-default{background-color:#f8f8f8;border-color:#e7e7e7}.navbar-default .navbar-brand{color:#777}.navbar-default .navbar-brand:hover,.navbar-default .navbar-brand:focus{color:#5e5e5e;background-color:transparent}.navbar-default .navbar-text{color:#777}.navbar-default .navbar-nav>li>a{color:#777}.navbar-default .navbar-nav>li>a:hover,.navbar-default .navbar-nav>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav>.active>a,.navbar-default .navbar-nav>.active>a:hover,.navbar-default .navbar-nav>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav>.disabled>a,.navbar-default .navbar-nav>.disabled>a:hover,.navbar-default .navbar-nav>.disabled>a:focus{color:#ccc;background-color:transparent}.navbar-default .navbar-toggle{border-color:#ddd}.navbar-default .navbar-toggle:hover,.navbar-default .navbar-toggle:focus{background-color:#ddd}.navbar-default .navbar-toggle .icon-bar{background-color:#888}.navbar-default .navbar-collapse,.navbar-default .navbar-form{border-color:#e7e7e7}.navbar-default .navbar-nav>.open>a,.navbar-default .navbar-nav>.open>a:hover,.navbar-default .navbar-nav>.open>a:focus{color:#555;background-color:#e7e7e7}@media (max-width:767px){.navbar-default .navbar-nav .open .dropdown-menu>li>a{color:#777}.navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav .open .dropdown-menu>.active>a,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#ccc;background-color:transparent}}.navbar-default .navbar-link{color:#777}.navbar-default .navbar-link:hover{color:#333}.navbar-default .btn-link{color:#777}.navbar-default .btn-link:hover,.navbar-default .btn-link:focus{color:#333}.navbar-default .btn-link[disabled]:hover,fieldset[disabled] .navbar-default .btn-link:hover,.navbar-default .btn-link[disabled]:focus,fieldset[disabled] .navbar-default .btn-link:focus{color:#ccc}.navbar-inverse{background-color:#222;border-color:#080808}.navbar-inverse .navbar-brand{color:#777}.navbar-inverse .navbar-brand:hover,.navbar-inverse .navbar-brand:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-text{color:#777}.navbar-inverse .navbar-nav>li>a{color:#777}.navbar-inverse .navbar-nav>li>a:hover,.navbar-inverse .navbar-nav>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav>.disabled>a,.navbar-inverse .navbar-nav>.disabled>a:hover,.navbar-inverse .navbar-nav>.disabled>a:focus{color:#444;background-color:transparent}.navbar-inverse .navbar-toggle{border-color:#333}.navbar-inverse .navbar-toggle:hover,.navbar-inverse .navbar-toggle:focus{background-color:#333}.navbar-inverse .navbar-toggle .icon-bar{background-color:#fff}.navbar-inverse .navbar-collapse,.navbar-inverse .navbar-form{border-color:#101010}.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a:focus{color:#fff;background-color:#080808}@media (max-width:767px){.navbar-inverse .navbar-nav .open .dropdown-menu>.dropdown-header{border-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu .divider{background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a{color:#777}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#444;background-color:transparent}}.navbar-inverse .navbar-link{color:#777}.navbar-inverse .navbar-link:hover{color:#fff}.navbar-inverse .btn-link{color:#777}.navbar-inverse .btn-link:hover,.navbar-inverse .btn-link:focus{color:#fff}.navbar-inverse .btn-link[disabled]:hover,fieldset[disabled] .navbar-inverse .btn-link:hover,.navbar-inverse .btn-link[disabled]:focus,fieldset[disabled] .navbar-inverse .btn-link:focus{color:#444}.pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}.pagination>li{display:inline}.pagination>li>a,.pagination>li>span{position:relative;float:left;padding:6px 12px;margin-left:-1px;line-height:1.42857143;color:#428bca;text-decoration:none;background-color:#fff;border:1px solid #ddd}.pagination>li:first-child>a,.pagination>li:first-child>span{margin-left:0;border-top-left-radius:4px;border-bottom-left-radius:4px}.pagination>li:last-child>a,.pagination>li:last-child>span{border-top-right-radius:4px;border-bottom-right-radius:4px}.pagination>li>a:hover,.pagination>li>span:hover,.pagination>li>a:focus,.pagination>li>span:focus{color:#2a6496;background-color:#eee;border-color:#ddd}.pagination>.active>a,.pagination>.active>span,.pagination>.active>a:hover,.pagination>.active>span:hover,.pagination>.active>a:focus,.pagination>.active>span:focus{z-index:2;color:#fff;cursor:default;background-color:#428bca;border-color:#428bca}.pagination>.disabled>span,.pagination>.disabled>span:hover,.pagination>.disabled>span:focus,.pagination>.disabled>a,.pagination>.disabled>a:hover,.pagination>.disabled>a:focus{color:#777;cursor:not-allowed;background-color:#fff;border-color:#ddd}.pagination-lg>li>a,.pagination-lg>li>span{padding:10px 16px;font-size:18px}.pagination-lg>li:first-child>a,.pagination-lg>li:first-child>span{border-top-left-radius:6px;border-bottom-left-radius:6px}.pagination-lg>li:last-child>a,.pagination-lg>li:last-child>span{border-top-right-radius:6px;border-bottom-right-radius:6px}.pagination-sm>li>a,.pagination-sm>li>span{padding:5px 10px;font-size:12px}.pagination-sm>li:first-child>a,.pagination-sm>li:first-child>span{border-top-left-radius:3px;border-bottom-left-radius:3px}.pagination-sm>li:last-child>a,.pagination-sm>li:last-child>span{border-top-right-radius:3px;border-bottom-right-radius:3px}.pager{padding-left:0;margin:20px 0;text-align:center;list-style:none}.pager li{display:inline}.pager li>a,.pager li>span{display:inline-block;padding:5px 14px;background-color:#fff;border:1px solid #ddd;border-radius:15px}.pager li>a:hover,.pager li>a:focus{text-decoration:none;background-color:#eee}.pager .next>a,.pager .next>span{float:right}.pager .previous>a,.pager .previous>span{float:left}.pager .disabled>a,.pager .disabled>a:hover,.pager .disabled>a:focus,.pager .disabled>span{color:#777;cursor:not-allowed;background-color:#fff}@-webkit-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-o-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}.progress{height:20px;margin-bottom:20px;overflow:hidden;background-color:#f5f5f5;border-radius:4px;-webkit-box-shadow:inset 0 1px 2px rgba(0,0,0,.1);box-shadow:inset 0 1px 2px rgba(0,0,0,.1)}.progress-bar{float:left;width:0;height:100%;font-size:12px;line-height:20px;color:#fff;text-align:center;background-color:#428bca;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);box-shadow:inset 0 -1px 0 rgba(0,0,0,.15);-webkit-transition:width .6s ease;-o-transition:width .6s ease;transition:width .6s ease}.progress-striped .progress-bar,.progress-bar-striped{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);-webkit-background-size:40px 40px;background-size:40px 40px}.progress.active .progress-bar,.progress-bar.active{-webkit-animation:progress-bar-stripes 2s linear infinite;-o-animation:progress-bar-stripes 2s linear infinite;animation:progress-bar-stripes 2s linear infinite}.progress-bar[aria-valuenow="1"],.progress-bar[aria-valuenow="2"]{min-width:30px}.progress-bar[aria-valuenow="0"]{min-width:30px;color:#777;background-color:transparent;background-image:none;-webkit-box-shadow:none;box-shadow:none}.progress-bar-success{background-color:#5cb85c}.progress-striped .progress-bar-success{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-info{background-color:#5bc0de}.progress-striped .progress-bar-info{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-warning{background-color:#f0ad4e}.progress-striped .progress-bar-warning{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.progress-bar-danger{background-color:#d9534f}.progress-striped .progress-bar-danger{background-image:-webkit-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:-o-linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent);background-image:linear-gradient(45deg,rgba(255,255,255,.15) 25%,transparent 25%,transparent 50%,rgba(255,255,255,.15) 50%,rgba(255,255,255,.15) 75%,transparent 75%,transparent)}.media,.media-body{overflow:hidden;zoom:1}.media,.media .media{margin-top:15px}.media:first-child{margin-top:0}.media-object{display:block}.media-heading{margin:0 0 5px}.media>.pull-left{margin-right:10px}.media>.pull-right{margin-left:10px}.media-list{padding-left:0;list-style:none}.list-group{padding-left:0;margin-bottom:20px}.list-group-item{position:relative;display:block;padding:10px 15px;margin-bottom:-1px;background-color:#fff;border:1px solid #ddd}.list-group-item:first-child{border-top-left-radius:4px;border-top-right-radius:4px}.list-group-item:last-child{margin-bottom:0;border-bottom-right-radius:4px;border-bottom-left-radius:4px}.list-group-item>.badge{float:right}.list-group-item>.badge+.badge{margin-right:5px}a.list-group-item{color:#555}a.list-group-item .list-group-item-heading{color:#333}a.list-group-item:hover,a.list-group-item:focus{color:#555;text-decoration:none;background-color:#f5f5f5}.list-group-item.disabled,.list-group-item.disabled:hover,.list-group-item.disabled:focus{color:#777;background-color:#eee}.list-group-item.disabled .list-group-item-heading,.list-group-item.disabled:hover .list-group-item-heading,.list-group-item.disabled:focus .list-group-item-heading{color:inherit}.list-group-item.disabled .list-group-item-text,.list-group-item.disabled:hover .list-group-item-text,.list-group-item.disabled:focus .list-group-item-text{color:#777}.list-group-item.active,.list-group-item.active:hover,.list-group-item.active:focus{z-index:2;color:#fff;background-color:#428bca;border-color:#428bca}.list-group-item.active .list-group-item-heading,.list-group-item.active:hover .list-group-item-heading,.list-group-item.active:focus .list-group-item-heading,.list-group-item.active .list-group-item-heading>small,.list-group-item.active:hover .list-group-item-heading>small,.list-group-item.active:focus .list-group-item-heading>small,.list-group-item.active .list-group-item-heading>.small,.list-group-item.active:hover .list-group-item-heading>.small,.list-group-item.active:focus .list-group-item-heading>.small{color:inherit}.list-group-item.active .list-group-item-text,.list-group-item.active:hover .list-group-item-text,.list-group-item.active:focus .list-group-item-text{color:#e1edf7}.list-group-item-success{color:#3c763d;background-color:#dff0d8}a.list-group-item-success{color:#3c763d}a.list-group-item-success .list-group-item-heading{color:inherit}a.list-group-item-success:hover,a.list-group-item-success:focus{color:#3c763d;background-color:#d0e9c6}a.list-group-item-success.active,a.list-group-item-success.active:hover,a.list-group-item-success.active:focus{color:#fff;background-color:#3c763d;border-color:#3c763d}.list-group-item-info{color:#31708f;background-color:#d9edf7}a.list-group-item-info{color:#31708f}a.list-group-item-info .list-group-item-heading{color:inherit}a.list-group-item-info:hover,a.list-group-item-info:focus{color:#31708f;background-color:#c4e3f3}a.list-group-item-info.active,a.list-group-item-info.active:hover,a.list-group-item-info.active:focus{color:#fff;background-color:#31708f;border-color:#31708f}.list-group-item-warning{color:#8a6d3b;background-color:#fcf8e3}a.list-group-item-warning{color:#8a6d3b}a.list-group-item-warning .list-group-item-heading{color:inherit}a.list-group-item-warning:hover,a.list-group-item-warning:focus{color:#8a6d3b;background-color:#faf2cc}a.list-group-item-warning.active,a.list-group-item-warning.active:hover,a.list-group-item-warning.active:focus{color:#fff;background-color:#8a6d3b;border-color:#8a6d3b}.list-group-item-danger{color:#a94442;background-color:#f2dede}a.list-group-item-danger{color:#a94442}a.list-group-item-danger .list-group-item-heading{color:inherit}a.list-group-item-danger:hover,a.list-group-item-danger:focus{color:#a94442;background-color:#ebcccc}a.list-group-item-danger.active,a.list-group-item-danger.active:hover,a.list-group-item-danger.active:focus{color:#fff;background-color:#a94442;border-color:#a94442}.list-group-item-heading{margin-top:0;margin-bottom:5px}.list-group-item-text{margin-bottom:0;line-height:1.3}.panel{margin-bottom:20px;background-color:#fff;border:1px solid transparent;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,.05);box-shadow:0 1px 1px rgba(0,0,0,.05)}.panel-body{padding:15px}.panel-heading{padding:10px 15px;border-bottom:1px solid transparent;border-top-left-radius:3px;border-top-right-radius:3px}.panel-heading>.dropdown .dropdown-toggle{color:inherit}.panel-title{margin-top:0;margin-bottom:0;font-size:16px;color:inherit}.panel-title>a{color:inherit}.panel-footer{padding:10px 15px;background-color:#f5f5f5;border-top:1px solid #ddd;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.list-group{margin-bottom:0}.panel>.list-group .list-group-item{border-width:1px 0;border-radius:0}.panel>.list-group:first-child .list-group-item:first-child{border-top:0;border-top-left-radius:3px;border-top-right-radius:3px}.panel>.list-group:last-child .list-group-item:last-child{border-bottom:0;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel-heading+.list-group .list-group-item:first-child{border-top-width:0}.list-group+.panel-footer{border-top-width:0}.panel>.table,.panel>.table-responsive>.table,.panel>.panel-collapse>.table{margin-bottom:0}.panel>.table:first-child,.panel>.table-responsive:first-child>.table:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:first-child{border-top-left-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:last-child{border-top-right-radius:3px}.panel>.table:last-child,.panel>.table-responsive:last-child>.table:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:first-child{border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:last-child{border-bottom-right-radius:3px}.panel>.panel-body+.table,.panel>.panel-body+.table-responsive{border-top:1px solid #ddd}.panel>.table>tbody:first-child>tr:first-child th,.panel>.table>tbody:first-child>tr:first-child td{border-top:0}.panel>.table-bordered,.panel>.table-responsive>.table-bordered{border:0}.panel>.table-bordered>thead>tr>th:first-child,.panel>.table-responsive>.table-bordered>thead>tr>th:first-child,.panel>.table-bordered>tbody>tr>th:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:first-child,.panel>.table-bordered>tfoot>tr>th:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:first-child,.panel>.table-bordered>thead>tr>td:first-child,.panel>.table-responsive>.table-bordered>thead>tr>td:first-child,.panel>.table-bordered>tbody>tr>td:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:first-child,.panel>.table-bordered>tfoot>tr>td:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.panel>.table-bordered>thead>tr>th:last-child,.panel>.table-responsive>.table-bordered>thead>tr>th:last-child,.panel>.table-bordered>tbody>tr>th:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:last-child,.panel>.table-bordered>tfoot>tr>th:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:last-child,.panel>.table-bordered>thead>tr>td:last-child,.panel>.table-responsive>.table-bordered>thead>tr>td:last-child,.panel>.table-bordered>tbody>tr>td:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:last-child,.panel>.table-bordered>tfoot>tr>td:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.panel>.table-bordered>thead>tr:first-child>td,.panel>.table-responsive>.table-bordered>thead>tr:first-child>td,.panel>.table-bordered>tbody>tr:first-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>td,.panel>.table-bordered>thead>tr:first-child>th,.panel>.table-responsive>.table-bordered>thead>tr:first-child>th,.panel>.table-bordered>tbody>tr:first-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>th{border-bottom:0}.panel>.table-bordered>tbody>tr:last-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>td,.panel>.table-bordered>tfoot>tr:last-child>td,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>td,.panel>.table-bordered>tbody>tr:last-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>th,.panel>.table-bordered>tfoot>tr:last-child>th,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>th{border-bottom:0}.panel>.table-responsive{margin-bottom:0;border:0}.panel-group{margin-bottom:20px}.panel-group .panel{margin-bottom:0;border-radius:4px}.panel-group .panel+.panel{margin-top:5px}.panel-group .panel-heading{border-bottom:0}.panel-group .panel-heading+.panel-collapse>.panel-body{border-top:1px solid #ddd}.panel-group .panel-footer{border-top:0}.panel-group .panel-footer+.panel-collapse .panel-body{border-bottom:1px solid #ddd}.panel-default{border-color:#ddd}.panel-default>.panel-heading{color:#333;background-color:#f5f5f5;border-color:#ddd}.panel-default>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ddd}.panel-default>.panel-heading .badge{color:#f5f5f5;background-color:#333}.panel-default>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ddd}.panel-primary{border-color:#428bca}.panel-primary>.panel-heading{color:#fff;background-color:#428bca;border-color:#428bca}.panel-primary>.panel-heading+.panel-collapse>.panel-body{border-top-color:#428bca}.panel-primary>.panel-heading .badge{color:#428bca;background-color:#fff}.panel-primary>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#428bca}.panel-success{border-color:#d6e9c6}.panel-success>.panel-heading{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.panel-success>.panel-heading+.panel-collapse>.panel-body{border-top-color:#d6e9c6}.panel-success>.panel-heading .badge{color:#dff0d8;background-color:#3c763d}.panel-success>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#d6e9c6}.panel-info{border-color:#bce8f1}.panel-info>.panel-heading{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.panel-info>.panel-heading+.panel-collapse>.panel-body{border-top-color:#bce8f1}.panel-info>.panel-heading .badge{color:#d9edf7;background-color:#31708f}.panel-info>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#bce8f1}.panel-warning{border-color:#faebcc}.panel-warning>.panel-heading{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.panel-warning>.panel-heading+.panel-collapse>.panel-body{border-top-color:#faebcc}.panel-warning>.panel-heading .badge{color:#fcf8e3;background-color:#8a6d3b}.panel-warning>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#faebcc}.panel-danger{border-color:#ebccd1}.panel-danger>.panel-heading{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.panel-danger>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ebccd1}.panel-danger>.panel-heading .badge{color:#f2dede;background-color:#a94442}.panel-danger>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ebccd1}.embed-responsive{position:relative;display:block;height:0;padding:0;overflow:hidden}.embed-responsive .embed-responsive-item,.embed-responsive iframe,.embed-responsive embed,.embed-responsive object{position:absolute;top:0;bottom:0;left:0;width:100%;height:100%;border:0}.embed-responsive.embed-responsive-16by9{padding-bottom:56.25%}.embed-responsive.embed-responsive-4by3{padding-bottom:75%}.well{min-height:20px;padding:19px;margin-bottom:20px;background-color:#f5f5f5;border:1px solid #e3e3e3;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.05);box-shadow:inset 0 1px 1px rgba(0,0,0,.05)}.well blockquote{border-color:#ddd;border-color:rgba(0,0,0,.15)}.well-lg{padding:24px;border-radius:6px}.well-sm{padding:9px;border-radius:3px}.tooltip{position:absolute;z-index:1070;display:block;font-size:12px;line-height:1.4;visibility:visible;filter:alpha(opacity=0);opacity:0}.tooltip.in{filter:alpha(opacity=90);opacity:.9}.tooltip.top{padding:5px 0;margin-top:-3px}.tooltip.right{padding:0 5px;margin-left:3px}.tooltip.bottom{padding:5px 0;margin-top:3px}.tooltip.left{padding:0 5px;margin-left:-3px}.tooltip-inner{max-width:200px;padding:3px 8px;color:#fff;text-align:center;text-decoration:none;background-color:#000;border-radius:4px}.tooltip-arrow{position:absolute;width:0;height:0;border-color:transparent;border-style:solid}.tooltip.top .tooltip-arrow{bottom:0;left:50%;margin-left:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-left .tooltip-arrow{bottom:0;left:5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-right .tooltip-arrow{right:5px;bottom:0;border-width:5px 5px 0;border-top-color:#000}.tooltip.right .tooltip-arrow{top:50%;left:0;margin-top:-5px;border-width:5px 5px 5px 0;border-right-color:#000}.tooltip.left .tooltip-arrow{top:50%;right:0;margin-top:-5px;border-width:5px 0 5px 5px;border-left-color:#000}.tooltip.bottom .tooltip-arrow{top:0;left:50%;margin-left:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-left .tooltip-arrow{top:0;left:5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-right .tooltip-arrow{top:0;right:5px;border-width:0 5px 5px;border-bottom-color:#000}.popover{position:absolute;top:0;left:0;z-index:1060;display:none;max-width:276px;padding:1px;text-align:left;white-space:normal;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #ccc;border:1px solid rgba(0,0,0,.2);border-radius:6px;-webkit-box-shadow:0 5px 10px rgba(0,0,0,.2);box-shadow:0 5px 10px rgba(0,0,0,.2)}.popover.top{margin-top:-10px}.popover.right{margin-left:10px}.popover.bottom{margin-top:10px}.popover.left{margin-left:-10px}.popover-title{padding:8px 14px;margin:0;font-size:14px;font-weight:400;line-height:18px;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-radius:5px 5px 0 0}.popover-content{padding:9px 14px}.popover>.arrow,.popover>.arrow:after{position:absolute;display:block;width:0;height:0;border-color:transparent;border-style:solid}.popover>.arrow{border-width:11px}.popover>.arrow:after{content:"";border-width:10px}.popover.top>.arrow{bottom:-11px;left:50%;margin-left:-11px;border-top-color:#999;border-top-color:rgba(0,0,0,.25);border-bottom-width:0}.popover.top>.arrow:after{bottom:1px;margin-left:-10px;content:" ";border-top-color:#fff;border-bottom-width:0}.popover.right>.arrow{top:50%;left:-11px;margin-top:-11px;border-right-color:#999;border-right-color:rgba(0,0,0,.25);border-left-width:0}.popover.right>.arrow:after{bottom:-10px;left:1px;content:" ";border-right-color:#fff;border-left-width:0}.popover.bottom>.arrow{top:-11px;left:50%;margin-left:-11px;border-top-width:0;border-bottom-color:#999;border-bottom-color:rgba(0,0,0,.25)}.popover.bottom>.arrow:after{top:1px;margin-left:-10px;content:" ";border-top-width:0;border-bottom-color:#fff}.popover.left>.arrow{top:50%;right:-11px;margin-top:-11px;border-right-width:0;border-left-color:#999;border-left-color:rgba(0,0,0,.25)}.popover.left>.arrow:after{right:1px;bottom:-10px;content:" ";border-right-width:0;border-left-color:#fff}.carousel{position:relative}.carousel-inner{position:relative;width:100%;overflow:hidden}.carousel-inner>.item{position:relative;display:none;-webkit-transition:.6s ease-in-out left;-o-transition:.6s ease-in-out left;transition:.6s ease-in-out left}.carousel-inner>.item>img,.carousel-inner>.item>a>img{line-height:1}.carousel-inner>.active,.carousel-inner>.next,.carousel-inner>.prev{display:block}.carousel-inner>.active{left:0}.carousel-inner>.next,.carousel-inner>.prev{position:absolute;top:0;width:100%}.carousel-inner>.next{left:100%}.carousel-inner>.prev{left:-100%}.carousel-inner>.next.left,.carousel-inner>.prev.right{left:0}.carousel-inner>.active.left{left:-100%}.carousel-inner>.active.right{left:100%}.carousel-control{position:absolute;top:0;bottom:0;left:0;width:15%;font-size:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,.6);filter:alpha(opacity=50);opacity:.5}.carousel-control.left{background-image:-webkit-linear-gradient(left,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);background-image:-o-linear-gradient(left,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.5)),to(rgba(0,0,0,.0001)));background-image:linear-gradient(to right,rgba(0,0,0,.5) 0,rgba(0,0,0,.0001) 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);background-repeat:repeat-x}.carousel-control.right{right:0;left:auto;background-image:-webkit-linear-gradient(left,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);background-image:-o-linear-gradient(left,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);background-image:-webkit-gradient(linear,left top,right top,from(rgba(0,0,0,.0001)),to(rgba(0,0,0,.5)));background-image:linear-gradient(to right,rgba(0,0,0,.0001) 0,rgba(0,0,0,.5) 100%);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);background-repeat:repeat-x}.carousel-control:hover,.carousel-control:focus{color:#fff;text-decoration:none;filter:alpha(opacity=90);outline:0;opacity:.9}.carousel-control .icon-prev,.carousel-control .icon-next,.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right{position:absolute;top:50%;z-index:5;display:inline-block}.carousel-control .icon-prev,.carousel-control .glyphicon-chevron-left{left:50%;margin-left:-10px}.carousel-control .icon-next,.carousel-control .glyphicon-chevron-right{right:50%;margin-right:-10px}.carousel-control .icon-prev,.carousel-control .icon-next{width:20px;height:20px;margin-top:-10px;font-family:serif}.carousel-control .icon-prev:before{content:'\2039'}.carousel-control .icon-next:before{content:'\203a'}.carousel-indicators{position:absolute;bottom:10px;left:50%;z-index:15;width:60%;padding-left:0;margin-left:-30%;text-align:center;list-style:none}.carousel-indicators li{display:inline-block;width:10px;height:10px;margin:1px;text-indent:-999px;cursor:pointer;background-color:#000 \9;background-color:rgba(0,0,0,0);border:1px solid #fff;border-radius:10px}.carousel-indicators .active{width:12px;height:12px;margin:0;background-color:#fff}.carousel-caption{position:absolute;right:15%;bottom:20px;left:15%;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,.6)}.carousel-caption .btn{text-shadow:none}@media screen and (min-width:768px){.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right,.carousel-control .icon-prev,.carousel-control .icon-next{width:30px;height:30px;margin-top:-15px;font-size:30px}.carousel-control .glyphicon-chevron-left,.carousel-control .icon-prev{margin-left:-15px}.carousel-control .glyphicon-chevron-right,.carousel-control .icon-next{margin-right:-15px}.carousel-caption{right:20%;left:20%;padding-bottom:30px}.carousel-indicators{bottom:20px}}


{#/*============================================================================
  #Components
==============================================================================*/ #}

{# /* // Mixins */ #}

@mixin text-decoration-none(){
    text-decoration: none;
    outline: 0;
    &:hover,
    &:focus{
      text-decoration: none;
      outline: 0;
    }
}

@mixin no-wrap(){
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-weight: normal;
}

@mixin border-radius() {
  border-radius: 4px;
}

@mixin appearance-none() {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
}


{# This mixin adds browser prefixes to a CSS property #}

@mixin prefix($property, $value, $prefixes: ()) {
  @each $prefix in $prefixes {
    #{'-' + $prefix + '-' + $property}: $value;
  }
   #{$property}: $value;
}

{# /* // Animations */ #}

@-webkit-keyframes wiggle {
  0% {
    @include prefix(transform, rotate(0), webkit ms moz);
  }
  25% {
    @include prefix(transform, rotate(-4deg), webkit ms moz);
  }
  50%{
    @include prefix(transform, rotate(4deg), webkit ms moz);
  }
  75% {
    @include prefix(transform, rotate(0), webkit ms moz);
  }
  100%{
    @include prefix(transform, rotate(0), webkit ms moz);
  }
}

.wiggle {
  -webkit-animation: wiggle 1.5s infinite;
  animation-delay: 2s;
}

@keyframes fade{
  0%   { opacity: 0; }
  100% { opacity: 1; }
}

@-moz-keyframes fade{
  0%   { opacity: 0; }
  100% { opacity: 1; }
}

@-webkit-keyframes fade{
  0%   { opacity: 0; }
  100% { opacity: 1; }
}

@-o-keyframes fade{
  0%   { opacity: 0; }
  100% { opacity: 1; }
}

.transition-soft {
  @include prefix(transition, all 0.3s ease, webkit ms moz o);
}

.transition-up {
  position: relative;
  top: -8px;
  @include prefix(transition, all 0.5s ease, webkit ms moz o);
  z-index: 10;
  pointer-events: none;
  &-active {
    top: 0;
    opacity: 1; 
    z-index: 100;
    pointer-events: all;
  }
}

.fade-in-vertical {
  transition: all .5s cubic-bezier(.16,.68,.43,.99);
  transition-delay: .3s;
  @include prefix(transform, translate(0, 40%), webkit ms moz o);
  &.visible {
    @include prefix(transform, translate(0, 0%), webkit ms moz o);
    opacity: 1;
  }
}

{# /* // SVG Icons */ #}

.svg-small {
  width: 20px;
  height: 20px;
}

{# /* // Wrappers */ #}

.circle-box{
  width: 350px;
  height: 350px;
  margin: 20px auto;
  padding: 90px 20px;
  text-align: center;
  @include prefix(border-radius, 200px, webkit ms moz);
  &-mid{
    width: 200px;
    height: 200px;
    padding: 50px 20px;
  }
  .circle-icon{
    width: 60%;
    margin: auto;
  }
  .circle-title {
    font-size:150px;
    font-weight: bold;
    line-height: 122px;
  }
  .circle-subtitle {
    font-size:40px;
    font-weight: bold;
  }
}

.backdrop{
  display: none;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  height: 140%;
  background-color: rgba(0,0,0,0.5);
  z-index: 1045;
  @include prefix(animation, fade 500ms, webkit ms moz);
}

{# /* // Buttons and links */ #}

.btn-spinner{
  float: right;
  margin: 3px 0 0 10px;
}
.btn-link:hover{
  opacity: 0.8;
}

.btn.facebook {
  background-color: #3B5998;
  border-bottom:4px solid #263a63;
  color: white;
  &:hover,
  &:focus,
  &:active{
    background-color: #3B5998;
    color: white;
    border-bottom: 0;
  }
  svg{
    position: absolute;
    top: 15px;
    left: 15px;
    color: #fff;
  }
}

.btn-transition {
  position: relative;
  overflow: hidden;
  .transition-container {
    position: absolute;
    top: 50%;
    left: 0;
    width: 100%;
    margin-top: -70px;
    text-align: center;
    @include prefix(transition, all 0.5s ease, webkit ms moz o);
    cursor: not-allowed;
    pointer-events: none;
    &.active {
      top: 50%;
      margin-top: -10px;
      &.btn-transition-success{
        margin-top: -10px
      }
    }
  }
  &.btn-small .transition-container.active {
    margin-top: -15px;
  }
} 


.link-module{
  padding: 15px 0;
  &.small {
    padding: 5px 0 10px 0;
  }
  &.no-border{
    margin: 0;
    border: none;
  }
  &-content {
    display: inline-block;
  }
  &-text {
    font-size: 16px;
  }
}

.link-module-icon {
  display: inline-block;
  height: 20px;
  width: 18px;
  margin: 1px 10px 0 0;
  opacity: .8;
}

{# /* // Chips */ #}

.chip {
  position: relative;
  margin: 0 10px 10px 0;
  padding: 10px 38px 10px 10px;
  font-size: 11px;
  white-space: normal;
  word-break: break-word;
  text-transform: uppercase;
  @include border-radius();
  @include prefix(transition, all 0.4s ease, webkit ms moz o);
  &:hover {
    opacity: 0.8;
  }
  &:focus {
    outline: 0;
  }
  &-remove-icon {
    position: absolute;
    top: 7px;
    right: 7px;
    display: inline-block;
    width: 20px;
    height: 20px;
    padding: 4px 6px 3px 6px;
    border-radius: 50%;
  }
}

{# /* // Dividers */ #}

.divider-with-circle {
  margin: -10px 0 25px 0;
}

{# /* // Panels */ #}

.panel-item {
  padding: 10px 15px;
  &:last-child {
    border: 0;
  }
}

{# /* // Forms */ #}

.select-container {
  position: relative;
  &:before{
    display: inline-block;
    position: absolute;
    right: 10px;
    top: 12px;
    width: 16px;
    pointer-events: none;
  }
  .select {
    width: 100%;
    padding: 10px 30px 10px 10px;
    @include appearance-none();
    font-size: 16px;
    &::-ms-expand {
      display: none;
    }
  }
}

.input-prepend{
  border-radius: 0px;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}

.input-clear-content {
  position: absolute;
  right: 3px;
  bottom: 1px;
  width: 22px;
  height: 36px;
  padding: 1px;
  cursor: pointer;
  &:before {
    display: block;
    margin: 9px 0 0 5px;
  }
}

.radio-button-container{
  padding: 0;
  list-style: none;
}
.radio-group-label{
  margin-bottom: 10px;
}
.radio-button-item:last-of-type .radio-button-content,
.radio-button-item:only-child .radio-button-content{
  margin-bottom: 0;
}
.shipping-extra-options .radio-button-item:first-child .radio-button-content{
  margin-top: 10px;
}
.radio-button{
  width: 100%;
  float: left;
  margin-bottom: 0;
  -webkit-tap-highlight-color: rgba(0,0,0,0);
  font-weight: normal;
  cursor: pointer;
  &.disabled{
    opacity: 0.6;
    cursor: not-allowed;
    input[type="radio"] {
      cursor: not-allowed;
    }
  }
  &-content{
    position: relative;
    width: 100%;
    float: left;
    margin-bottom: 10px;
    padding: 20px 15px; 
    clear: both;
    border-radius: 4px;
  }
  &-icons-container{
    position: absolute;
    top: 0;
    left: 0;
    height: calc(100% - 3px);;
    padding: 18px 10px;
    border-radius: 3px 0 0 3px; 
  }
  &-icons{
    position: relative;
    float: left;
  }
  &-icon{
    border-radius: 50%;
    width: 20px;
    height: 20px;
  }
  input[type="radio"]{
    display: none;
    & +  .radio-button-content .unchecked{
      float: left;
    }
    & +  .radio-button-content .checked{
      position: absolute;
      left: 10px;
      top: 10px;
      width:0;
      height: 0;      
      @include prefix(transform, translate(-50%,-50%), webkit ms moz o);
      @include prefix(transition, all 0.2s , webkit ms moz o);
    }
    &:checked {
      .shipping-method-name{
        font-weight: bold;
      } 
      + .radio-button-content .checked{
        width: 16px;
        height: 16px;
      }  
    } 
    &:checked + .radio-button-content .shipping-price:after{
      width: 100%;
    }
  }
  &-label{
    width: calc(100% - 15px);
    float: left;
    padding-left: 40px;
    font-size: 12px;
  }
}

.checkbox-container{
  .checkbox {
    position: relative;
    display: inline-block;
    min-width: 40px;
    margin: 5px 5px 0 0;
    padding: 8px;
    font-size: 12px;
    font-weight: normal;
    text-align: center;
    @include text-decoration-none();
    border-radius: 6px;
    @include prefix(transition, all 0.4s ease, webkit ms moz o);
    cursor: pointer;
    &-color {
      position: absolute;
      top: 50%;
      left: 6px;
      width: 15px;
      height: 15px;
      margin-top: -7px;
      border-radius: 50%;
    }
  }
  input {
    display: none;
    &:checked ~ .checkbox {
      opacity: 1;
    }
  }
}

{# /* Lists */ #}

.list-readonly{
  .list-item{
    position: relative;
    width: 100%;
    float: left;
    clear: both;
    padding: 20px 35px 20px 15px;
    .radio-button{
      cursor: default;
      .radio-button-content{
        margin: 0;
        padding: 0;
      }
      .radio-button-label{
        width: 100%;
        padding-left: 0;
      }
      .radio-button-icons-container{
        display: none;
      }
    }
  }
}

{# /* // Alerts and notifications */ #}

.alert{
  position: relative;
  clear: both;
  padding: 15px 15px 15px 50px;
  border-radius: 4px;
  border: 0;
  border-top: 3px solid;
  @include prefix(box-shadow, 0 0 10px rgba(#000, .2), webkit ms moz);
  font-size: 12px;
  text-transform: uppercase;
  &:before{
    position: absolute;
    top: 13px;
    left: 15px;
    width: 20px;
    height: 20px;
    padding: 2px 8px;
    text-align: center;
    border-radius: 50%;
    @include prefix(box-shadow, 0 0 10px rgba(#000, .2), webkit ms moz);
  }
  &-warning:before{
    padding: 2px 4px;
  }
  &-success:before{
    padding: 4px;
  }
}

.notification {
  padding: 15px 10px;
  &-primary{
    border-bottom: 3px solid;
  }
  &-danger {
    margin: -10px 0 20px 0;
    svg {
      margin-right: 5px;
    }
  }
}

{# /* // Progress bar */ #}

.bar-progress {
  position: relative;
  height: 10px;
  border-radius: 4px;
  .bar-progress-active {
    width: 0%;
    height: 10px;
    border-radius: 4px;
  }
  .bar-progress-check {
    position: absolute;
    top: -10px;
    right: -5px;
    width: 30px;
    height: 30px;
    padding: 3px;
    line-height: 20px;
    text-align: center;
    border-radius: 6px;
    transform: scale(0.5);
    opacity: 0;
    &.active {
      transform: scale(1);
      opacity: 1;
    }
  }
}

.ship-free-rest-message {
  position: relative;
  height: 35px;
  .ship-free-rest-text {
    position: absolute;
    top: -5px;
    width: 100%;
    text-align: center;  
    line-height: 36px;
    opacity: 0;
  }
  &.success .bar-progress-success,
  &.amount .bar-progress-amount,
  &.condition .bar-progress-condition {
    top: 0;
    opacity: 1;
  }
}

{# /* // Modals */ #}

{# /* Modal docked to the right */ #}

.modal-right{
  position: fixed;
  top: 0;
  right: 0;
  width: 500px;
  height: 100%;
  z-index: 1048;
  border-left: 1px solid #eee;
  overflow-y: scroll;
  text-align: left;
  &-header{
    padding: 25px 15px 15px 15px;
  }
  &-body{
    padding: 0 15px 15px 15px;
  }
}

.modal-header{
  border-radius: 6px 6px 0 0;
  &.with-tabs{
    padding: 5px 15px 0 15px;
  }
  h3{
    margin: 0;
    text-transform: uppercase;
    font-size: 18px;
    font-weight: normal;
  }
  .nav-tabs-container{
    margin-left: -15px;
    margin-right: -15px;
  }
}
.modal-content{
  box-shadow: none;
  border:0;
  border-radius:0;
}

.modal-footer {
  display: inline-block;
  width: 100%;
}

.modal-small {
  max-height: 380px; 
}

.modal-backdrop {
  z-index: 1049;
}

.modal-open{
  overflow: hidden;
}

.modal-dialog-400px{
   width: 400px;
}

.modal-body-full-h {
  max-height: 80vh;
  overflow-y: auto;
}

{# /* // Tabs */ #}

.tab-group{
  width: 100%;
  margin-bottom: 15px;
  padding: 0;
  overflow-x: auto;
  white-space: normal;
  .tab{
    display: inline-flex;
    float: left;
    &-link{
      float: left;
      padding: 10px;
      text-align: center;
      text-transform: uppercase;
    }
  }
}

.tab-panel:not(.active){
  display: none;
}
.tab-panel.active{
  display: block;
}


{# /* // Cards */ #}

.card-collapse-toggle {
  cursor: pointer;
  &.active {
    transform: rotate(90deg);
  }
}

{# /* // Pagination */ #}

.pagination-container {
  text-align:center;
}

{# /* // User content */ #}

.user-content{
  img{
    width: auto;
    max-width: 100%!important;
    height: auto!important;
    margin: 10px auto;
    &.user-page-logos {
      width: 45px;
      margin-top: 5px;
    }
  }
  iframe {
    width: calc(100% + 30px);
    margin: 0 0 0 -15px;
  }
}

{# /* // Tables */ #}

.table {
  td,
  th {
    border-top: 0;
  }
}

.table tbody + tbody.table-body-inverted {
  border-top: none;
}

{# /* // Images */ #}

.card-img{
  margin: 0 5px 5px 0;
  border: 1px solid #00000012;
  @include prefix(box-shadow, 0 1px 0px 0 rgba(0, 0, 0, 0.05), webkit ms moz);
  @include prefix(border-radius, 5px, webkit ms moz);
  &-small {
    height: 25px;
  }
  &-medium{
    height: 35px;
  }
  &-big{
    height: 50px;
  }
}

.quickshop-img {
  max-width: 100%;
  max-height: 600px;
}

{# /* // Banners */ #}

.textbanner {
  &-link {
    display: block;
    width: 100%;
    height: 100%;
  }
  &-image:after {
    @include prefix(transition, all 0.8s ease, webkit ms moz o);
  }
}

{# /*  // Social widgets */ #}

.fb-page{
  width: 300px;
  clear: both;
  margin: 0 auto 20px auto;
  border: 1px solid #e0e0e0;
  background: white;
  font-family: Helvetica, Arial, sans-serif;
  font-size: 11px;
  text-align: left;
  color: #383838;
  &-title{
    font-family: Helvetica, Arial, sans-serif!important;
    text-transform: none !important;
    letter-spacing: normal !important;
  }
  &-box{
    background: #fff;
    border-color: #EBEDF0 #dfe0e4 #d0d1d5;
    border-radius: 2px;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .12);
  }
  &-img-container{
    position: relative;
    flex: 0 0 50px;
    width: 50px;
    height: 50px;
    border: 2px solid #fff;
    box-shadow: 0 1px 6px rgba(0, 0, 0, .5);
  }
  &-img{
    position: absolute;
    top: 50%;
    left: 50%;
    width: 100%;
    @include prefix(transform, translate(-50%, -50%), webkit ms moz o);
  }
  &-icon{
    line-height: 50px;
    opacity: 0.1;
    fill: #383838;
  }
  &-link{
    font-family: sans-serif;
    font-size: 12px;
    text-decoration: underline;
    color: #383838;
    &:hover{
      color: #383838;
      opacity: 0.8;
    }
    svg{
      fill: #4267b2;
    }
  }
  .fb-like{
    padding: 5px 10px;
    border-radius: 3px;
    color: white;
    fill: white;
    background: #4267b2;
    font-size: 12px;
    font-family: Helvetica, Arial, sans-serif;
    &:hover{
      opacity: 0.8;
      text-decoration: none;
    }
  }
  &-footer{
    background: #f5f6f7;
    text-align: center;
  }
}

{# /* // Video */ #}

.video-modal {
  position: absolute;
  width: 100%;
  height: 100%;
  .embed-responsive {
    height: 100%;
    padding-bottom: 0;
  }
}

{# /* // Captcha */ #}

.g-recaptcha {
  margin-bottom: 20px;
  text-align: right;
}

.g-recaptcha > div {
  display: inline-block;
}

.grecaptcha-badge {
  bottom: 100px !important;
}

{# /* // Placeholder */ #}

.placeholder-empty-overlay {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 9;
  width: 100%;
  height: 100%;  
}
.placeholder-empty-overlay:hover, .placeholder-empty-overlay:active, .placeholder-empty-overlay:focus {
  opacity: 1;
}
.placeholder-info {
  position: relative;
  top: 50%;
  left: 50%;
  width: 330px;
  padding: 30px 25px;
  text-align: center;
  line-height: 18px;
  transform: translate(-50%, -50%);
  box-sizing: border-box;
  .placeholder-description {
    margin: 20px 0;
  }
}

{#/*============================================================================
  #Header and nav
==============================================================================*/ #}

{# /* // Nav desktop */ #}

.nav-head-fixed {
    position: absolute;
    top: -140px;
    left: 0;
    right: 0;    display: block;
    z-index: 99;
    @include prefix(box-shadow, 0 2px 2px 0 rgba(50, 50, 50, 0.15), webkit ms moz);
    opacity: 0.95;
    transition: 0.2s;

    &.fixed {
        position: fixed;
        transition: 0.3s;
        z-index: 999;
    }
}



.desktop-nav-item{
  &:first-child {
    border-top-right-radius: 5px;
    border-top-left-radius: 5px;
  }
  &:last-child {
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
  }
  .desktop-nav-link{
    @include text-decoration-none();
    &:hover + .desktop-nav-list{
      display: block;
      visibility: visible;
      opacity: 1;
    }
  }
  .desktop-nav-list:hover{
    display: block;
    visibility: visible;
    opacity: 1;
  }
  .desktop-nav-list{
    position: absolute;
    top: 38px;
    z-index: 99999;
    width: 100%;
    min-width: 160px;
    max-width: 300px;
    padding: 0;
    text-align: left;
    visibility: hidden;
    opacity: 0;
    transition: visibility 0s, opacity 0.1s linear;
    @include border-radius();
  }
  .desktop-nav-item{
    width: 100%;
    .desktop-nav-link {
      display: block;
      padding:10px;
      text-transform: none;
    }
    .desktop-nav-list{
      top:0;
      left: 100%;
      margin: 0;
    }
  }
  .desktop-nav-arrow{
    display: inline-block;
    width: 15px;
    float: right;
  }
}

{# /* // Search */ #}

.search-suggest{
  position: absolute;
  top: 34px;
  right: 0;
  z-index: 998;
  display: none;
  width: 300px;
  border-radius: 7px;
  box-shadow: 0 2px 2px 0 rgba(0,0,0,.14),0 3px 1px -2px rgba(0,0,0,.2),0 1px 5px 0 rgba(0,0,0,.12);
  -webkit-overflow-scrolling: touch;
  &-list{
    float: left;
    width: 100%;
    margin: 0;
    padding: 0;
  }
  &-item{
    list-style-type: none;
  }
  &-link{
    position: relative;
    display: block;
    float: left;
    width: 100%;
    padding: 5px 10px;
    box-sizing: border-box;
    border-bottom: 1px solid rgba(0, 0, 0, 0.12);
    list-style-type: none;
    @include text-decoration-none();
  }
  &-text{
    display: inline-block;
    float: left;
    width: 70%;
  }
  &-image-container{
    width: 40px;
    float: left;
    margin-right: 10px;
    padding-top: 3px;
  }
  &-image{
    max-width: 100%;
    max-height: 45px;
  }
  &-icon{
    position: absolute;
    right: 10px;
    top: 50%;
    width: 20px;
    margin-top: -7px;  
    text-align: right;
  }
  &-all-link{
    min-height: initial;
    padding: 10px;
    text-align: center;
    text-decoration: underline;
  }
}

{# /* // Logo */ #}

.logo-fixed{
  max-height: 40px;
  max-width: 100%;
}

{#/*============================================================================
  #Product grid
==============================================================================*/ #}

{# /* // Filters */ #}

.filters-overlay {
  position: fixed;
  top: 0;
  left: 0;
  z-index: 30000;
  width: 100%;
  height: 100%;
  .filters-updating-message {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 80%;
    text-align: center;
    @include prefix(transform, translate(-50%, -50%), webkit ms moz o);
  }
}

.filter-input-price-container {
  position: relative;
  display: inline-block;
  width: calc(50% - 25px);
  margin-right: 5px;
  .form-label {
    font-size: 12px;
    font-weight: normal;
  }
  .filter-input-price {
    height: auto;
    padding: 8px;
    font-size: 11px;
  }
}

.item-quickshop-link {
  position: absolute;
  top: 30%;   
  left: 0;
  right: 0;
  width: 74%;
  margin: auto;
  padding: 10px 0;
  z-index: 100;
  font-size: 14px;
  a{
    text-transform: uppercase;
    text-decoration: none;
  }
}

.item:hover .item-quickshop-link {
  display: block;
}
.item:hover .item-quickshop-link a{
  display: block;
}

{#/*============================================================================
  #Product Detail
==============================================================================*/ #}

{# /* // Image */ #}

.desktop-product-image-container {
  position: relative;
  width: 70%;
  margin: 0 auto 20px auto;
}

.cloud-zoom-big {
  /* Importants necesaries to overide plugin inline styles */
  width: 100%!important;
  overflow:hidden;
  background-color:#fff;
  z-index: 1!important;
}

.mousetrap{
  /* Importants necesaries to overide plugin inline styles */
  width: 100%!important;
  z-index: 2!important;
}

.cloud-zoom-loading {
  color:white;
  background:#222;
  padding:3px;
  border:1px solid #000;
}

.desktop-zoom-big {
  position: absolute;
  width: 100%;
  height: 100%;
  z-index: 1;
  background-position: 50% 50%;
  opacity: 0;
  transition: opacity 0.5s;
}

.desktop-zoom-container {
  cursor: zoom-in;
}

.desktop-zoom-container:hover .product-slider-image:not(.desktop-zoom-big) {
  opacity: 0;
}

.desktop-zoom-container:hover .desktop-zoom-big {
  opacity: 1;
}

.thumb-link {
  display: inline-block;
  opacity: .6;
  &:hover{
    opacity: 1;
  }
}
.thumb-image {
  width: 100px;
  margin: 3px;
  vertical-align: top;
}

.quickshop-image{
  height: auto;
  max-width: 100%;
}

{# /* // Form and info */ #}

{# /* // Variants */ #}

.variant-container{
  padding: 0 10px 20px 0;
  .variant-label{
    width: 100%;
    margin-bottom: 10px;
    font-weight: bold;
    text-transform: uppercase;

    &-property{
      font-weight: normal;
      text-decoration: underline;
      opacity: 0.8;
    }
  }
  &.btn-variant-container{
    float: left;
    width: 100%;
    padding-bottom: 10px;
  }
  .btn-variant {
    display: inline-block;
    width: auto;
    min-height: 30px;
    margin: 0 5px 5px 0;
    padding: 1px;
    cursor: pointer;
    border-radius: 30px;
    &-no-stock {
      position: relative;
      background: transparent;
      overflow: hidden;
      &:after {
        position: absolute;
        top: 0;
        left: 0;
        z-index: 9;
        width: 100%;
        height: 100%;
        content:'';
      }
    }
  }
  .btn-variant-content {
    display: inline-block;
    float: left;
    height: 26px;
    width: 26px;
    cursor: pointer;
    border-radius: 30px;
    &-square {
      position: relative;
      display: block;
      width: 48px;
      height: 48px;
      overflow: hidden;
    }
  }
  .btn-variant.btn-variant-custom{
    min-height: 24px;
    height: auto;
    width: auto;
    .btn-variant-content {
      width: auto;
      height: auto;
      padding: 2px 8px;
      font-size: 16px;
    }
  }
}

{# /* // Payments */ #}

.product-selected-gateway{
  position: relative;
  float: left;
  width: 100%;
  padding: 5px 10px 0 0;
  font-size: 12px;
  text-align: left;
}
.product-payment-logos-i-credit{
  line-height: 20px;
}
.payment-credit-icon{
  line-height: 12px;
}
.product-payment-icon-plus{
  top: -7px;
}
.payments-card-img{
  height: 26px;
}
.product-check-icon-gw{
  position: relative;
  top: 0;
  right: 0;
  display: inline-block;
  margin-top: -3px;
}
.payments-disabled-select{
  top: 0;
  left: 0;
  cursor: not-allowed;
  &.hidden{
    display: none!important;
  }
}

{#/*============================================================================
  #Footer
==============================================================================*/ #}

.footer {
  padding: 10px 0;
  @include prefix(box-shadow, inset 1px 4px 7px -6px, webkit ms moz);
  &-title{
    font-size: 16px;
    margin-bottom: 15px;
  }
  &-payship-img{
    width: auto;
    height: 30px;
    margin: 0 10px 10px 0;
  }
  &-list li{
    margin-bottom: 5px;
  }
  .seals-container img{
    max-width: 170px;
    max-height: 80px;
  }
  .afip img{
    max-width: 60px;
    max-height: 80px;
  }
}

.footer-legal{
  padding: 10px 0;
}
.powered-by-logo {
  width: 175px;
  float: right;
}
.label-top-left {
  position: absolute;
  top: 25px;
  left: 25px;
  z-index: 2;
}
.product-image-limited {
  max-height: 300px;
  max-width: 100%;
  object-fit: contain;
}

{#/*============================================================================
  #Contact page
==============================================================================*/ #}

.map {
  height: 280px;
  width: 100%;
  border: 1px solid;
}

{#/*============================================================================
  #Cart page
==============================================================================*/ #}

{# /* // Cart table */ #}

.cart-table{
  width: 100%;
  margin-bottom: 10px;
  &-row{
    position: relative;
    clear: both;
    margin-bottom: 10px;
    padding: 15px 0;
    list-style: none;
  }
  &-row-md-flex,
  .cart-product-row-md {
    display: flex;
    align-items: center;
  }
}
.cart-quantity-btn,
.cart-btn-delete{
  padding: 10px;
  display: inline-block;
  background: transparent;
  vertical-align: bottom;
  font-size: 16px;
  opacity: 0.8;
  &:hover{
    opacity: 0.6;
  }
}
.cart-quantity-btn-left{
  border-radius: 6px 0 0 6px;
}
.cart-quantity-btn-right{
  border-radius: 0 6px 6px 0;
}
.cart-btn-delete{
  float: right;
  padding-right: 0;
  border:0;
  &-svg-icon{
    width: 20px;
    height: 20px;
  }
}
.cart-delete-svg-icon{
  width: 30px;
  height: 30px;
  opacity: 0.6;
  &.small{
    width: 20px;
    height: 20px;
  }
}
.cart-quantity-input {
  display: inline-block;
  width: 40px;
  height: 38px;
  margin: 0 -4px 0 -3px;
  color: #353535;
  font-size: 16px;
  text-align: center;
  -moz-appearance:textfield;
  border-left: 0;
  border-right: 0;
  &::-webkit-outer-spin-button,
  &::-webkit-inner-spin-button{
    -webkit-appearance: none;
  }
}
.cart-quantity-input-container{
  .fa-cog{
    display: none;
  }
  .cart-item-spinner{
    display: block;
    padding: 8px 10px;
  }
}
.cart-quantity-svg-icon{
  width: 16px;
  height:16px;
}


{# /* // Totals */ #}

.cart-totals-container{
  padding: 5px 15px;
  margin-bottom: 10px;
}
.cart-totals{
  float: left;
  width: 100%;
  clear: both;
  margin: 5px 0;
  text-align: right;
  font-weight: bold;
}
.cart-subtotal{
  font-size: 16px;
}
.cart-total{
  font-size: 24px;
}

.total-promotions-row{
  position: relative;
  float: right;
  width: 100%;
  margin-bottom: 5px;
  text-align: right;
  .cart-promotion-number{
    margin-left: 5px;
  }
}

{# /* // Ajax cart */ #}

.ajax-cart-row{
  padding: 10px 0;
  margin-bottom: 0;
}
.ajax-cart-item-unit-price{
  float: left;
  width: 100%;
  margin:5px 0 2px 0;
}

.ajax-cart-item-subtotal.not-editable{
  width: auto;
  float: right;
  margin: 0;
}

{#/*============================================================================
  #Media queries page
==============================================================================*/#}


{# /* // Min width 770px */ #}

@media (min-width: 770px) {
    
  {# /* //// Components */ #}

  .no-slide-effect-md{
    -webkit-transition: 0.001s ease !important;
    transition: 0.001s ease !important;
  }

  {# /* //// Product detail */ #}

  .product-shipping-calculator .shipping-calculator-head.with-form + .shipping-calculator-spinner .spinner-bar {
    margin: 0 15px; 
  }
}

{# /* // Max width 767px */ #}

@media (max-width: 767px) {

  {# /* //// Components */ #}

  {# /* Wrappers */ #}

  body.hamburger-panel-animated{
    height: 100%;
    overflow: hidden;
  }

  .circle-box,
  .circle-box-mid{
    width: 200px;
    height: 200px;
    padding: 50px 20px;
    .circle-title{
      font-size: 64px;
      line-height: 42px;
    }
    .circle-subtitle{
      font-size: 30px;
    }
  }

  {# /* Buttons and links */ #}

  .link-module,
  .btn-module{
    display: block;
    position: relative;
    clear: both;
    box-sizing:border-box;
    &:hover{
      opacity: 0.8;
    }
  }

  .btn-module {
    margin: 0 0 20px 0;
    padding: 10px 40px 10px 10px;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    text-align: left;
    text-transform: uppercase;
    font-size: 16px;
  }

  .link-module.small {
    padding: 15px 0;
  }

  .link-module-icon-right,
  .btn-module-icon-right {
    width: 36px;
    height: 36px;
    position: absolute;
    right: 0;
    float: right;
    display: block;
    top: 50%;
    margin-top: -20px;
  }

  {# /* Forms */ #}

  /* Hack to avoid autozoom on IOS */

  input:not([type=submit]),
  textarea,
  select.form-control{
    font-size: 16px;
  }

  {# /* Animations */ #}

  .move-down{
    top: 0;
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    -webkit-transform: translate3d(0,0,0);
    -moz-transform: translate3d(0,0,0);
    -ms-transform: translate3d(0,0,0);
    -o-transform: translate3d(0,0,0);
    transform: translate3d(0,0,0);
  }
  .move-up{
    top: 0;
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    -webkit-transform: translate3d(0,-45px,0);
    -moz-transform: translate3d(0,-45px,0);
    -ms-transform: translate3d(0,-45px,0);
    -o-transform: translate3d(0,-45px,0);
    transform: translate3d(0,-45px,0);
  }

  {# /* Modals */ #}

  .modal-backdrop.fade.in{
    opacity:0;
    &.modal-backdrop-zindex-top{
      opacity: .8;
      z-index: 999998;
    }
  }
  .modal{
    z-index: 5000;
    &-header{
      padding: 0;
      .nav-tabs-container{
        margin:0 0 20px 0;
      }
    }
    &-header.with-tabs{
      padding:0;
    }
    .modal-footer {
      box-shadow: none;
    }
  }

  .modal-xs{
    position: fixed;
    top: 0;
    z-index: 4200;
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
    border:0;
    opacity: 1;
    box-sizing:border-box;
    box-shadow:none;
    &.modal-zindex-top{
      z-index: 999999;
    }
    &-centered{
      width: 80%;
      height: auto;
      top: 40%;
      left: 50%;
      transition: all 0.5s cubic-bezier(0.16, 0.68, 0.43, 0.99);
      opacity: 0;
      @include prefix(transform, translate(-50%, -60%), webkit ms moz o);
      &.fade.in{
        @include prefix(transform, translate(-50%, -35%), webkit ms moz o);
        opacity: 1;
      }
      .modal-header{
        padding: 10px 0;
      }
      .modal-body{
        padding: 10px 5px;
      }
      .btn-floating{
        top: 0;
        right: 0;
      }
    }
    &-small {
      width: 80%;
    }
    &-dialog{
      display: flex;
      flex-direction: column;
      height: 100%;
      margin: 0;
      @include prefix(transform, translate3d(0, 0, 0)!important, webkit ms moz);
      .modal-content{
        height: 100%;
        padding-bottom: 40px;
        overflow: auto;
        box-shadow:none;
        border: 0;
      }
    }
    &-bottom-sheet.fade {
      top: initial;
      bottom: -100%;
      left: 0;
      height: auto;
      width: 100%;
      transition: all 0.5s cubic-bezier(0.16, 0.68, 0.43, 0.99);
      &.in {
        top: initial;
        bottom: 0;
        height: auto;
      }
    }
    &-header{
      position: relative;
      display: block;
      padding: 15px;
      clear: both;
      text-decoration: none;
      ms-word-break: break-all;
      word-wrap: break-word;
      -webkit-hyphens: auto;
      -moz-hyphens: auto;
      hyphens: auto;
      -webkit-tap-highlight-color:rgba(0,0,0,0);
    }
    &-header-text{
      display: inline-block;
      clear: both;
      font-size: 16px;
      text-transform: uppercase;
      &.modal-xs-right-header-text{
        margin-left: 30px;
      }
    }
    &-header-icon{
      position: absolute;
      top: 11px;
      right: 14px;
      &.modal-xs-right-header-icon{
        left: 5px;
        right: initial;
      }
    }
    &-body{
      height: 100%;
      max-height: initial;
      padding:10px;
      overflow: initial;
      &-list{
        padding:0 0 200px 0;
        overflow-y: auto;
      }
    }
    &-list-item{
      position: relative;
      display: block;
      clear: both;
      padding: 20px 15px;
      text-decoration: none;
      font-size: 16px;
      &.selected{
        .modal-xs-radio-icon svg{
          visibility: visible;
        }
      }
    }
    &-list-subtitle{
      font-weight: bold;
      font-size: 12px;
      text-transform: uppercase;
    }
    &-radio-icon-container {
      width: 12%;
      display: inline-block;
      float: left;
    }
    &-radio-icon {
      height: 22px;
      width: 22px;
      display: inline-block;
      padding: 0px 4px;
      border-radius: 100%;
      cursor: pointer;
      opacity: 0.7;
      svg{
        visibility: hidden;
      }
    }
    &-radio-text {
      width: 88%;
      display: inline-block;
    }
  }

  {# /* Modal animated from left */ #}

  .modal-xs-left{
    right: inherit;
    left: inherit;
    padding: 0;
    @include prefix(box-shadow, -4px 0 17px 0 rgba(0,0,0,0.23), webkit ms moz);
    -webkit-overflow-scrolling: touch;
    &.modal.fade.in,
    &.modal.fade{
      top: 0;
    }
  }

  {# /* Modal animated from right */ #}

  .modal-xs-right{
    right: inherit;
    left: inherit;
    padding: 0;
    @include prefix(box-shadow, -4px 0 17px 0 rgba(0,0,0,0.23), webkit ms moz);
    -webkit-overflow-scrolling: touch;
    &.modal.fade.in,
    &.modal.fade{
      top: 0;
    }
    &.mobile-nav-subcategories-panel{
      top: 126px;
      z-index: 3000;
    }
  }
  .modal-xs-right.modal.fade.in,
  .modal-xs-right-in,
  .modal-xs-left.modal.fade.in,
  .modal-xs-left-in{
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    @include prefix(transform, translate3d(0,0,0), webkit ms moz o);
  }

  .modal-xs-bottom.modal.fade.in,
  .modal-xs-bottom-in{
    transition: all .5s cubic-bezier(.16,.68,.43,.99);
    @include prefix(transform, translate3d(0,0,0), webkit ms moz o);
  }

  {# /* Tabs */ #}

  .tab-group{
    overflow-x: scroll;
    white-space: nowrap;
    .tab{
      float: none;
    }
  }

  {# /* Pagination */ #}

  .pagination{
    width: 100%;
    margin-bottom: 0;
    padding: 10px;
    border-radius: 0;
    &-input-container{
      display: inline-block;
      width: 60%;
      margin-top: 10px;
      font-size: 18px;
    }
    &-input{
      height: 30px;
      width: 50px;
      margin: 0px 5px 5px 0;
      padding: 7px;
    }
    &-arrow-container{
      width: 20%;
      display: inline-block;
    }
    a.pagination-arrow-link{
      border: 0;
      .pagination-icon{
        margin-top: 6px;
        font-size: 26px;
      }
      &:hover,
      &:focus{
        @include text-decoration-none();
      }
    }
  }

  {# /* User content */ #}

  .user-content{
    width: 100%;
    img{
      width: 80%!important;
    }
    table{
      width: 100%!important;
    }
  }

  {# /* Images */ #}

  .card-img{
    &-big{
      height: 60px;
    }
  }
  
  .quickshop-img {
    position: absolute;
    left: 50%;
    width: auto;
    height: 100%;
    max-height: 390px;
    @include prefix(transform, translate3d(-50%,0,0), webkit ms moz o);
    &-container {
      position: relative;
      overflow: hidden;
      max-height: 390px;
    }
  }

  {# /* Filters */ #}

  .filter-input-price-container {
    width: 85px;
    .filter-input-price {
      padding: 10px 25px 10px 10px;
      font-size: 12px;
    }
  }

  {# /* //// Header and nav */ #}

  {# /* Nav mobile */ #}

  .btn-hamburger-icon{
    width: 25px;
    height: 25px;
    margin-top: 5px;
    cursor: pointer;
  }
  .hamburger-panel{
    display: block;
    position: fixed;
    top: 0;
    width: 280px;
    height: 100%;
    z-index: 999997;
    -webkit-overflow-scrolling: touch;
    overflow-y: auto;
    background: #333332;
    color:white;
    @include prefix(transition, 0.3s, webkit ms moz);
    @include prefix(transform, translate3d(-280px,0,0), webkit ms moz);
    .tooltip {
      transition: all .5s cubic-bezier(.16,.68,.43,.99);
      transition-delay: .3s;
      opacity: 0;
      @include prefix(transform, translate(0, 40%), webkit ms moz o);
    }
    &.hamburger-panel-animated{
      @include prefix(transform, translate3d(0,0,0), webkit ms moz);
       .tooltip {
        @include prefix(transform, translate(0, 0%), webkit ms moz o);
        opacity: 1;
      }
    }
    a {
      color: white;
    }
    svg{
      fill:white;
    }
    &-list{
      float: left;
      width: 100%;
      clear: both;
      padding: 0;
      margin: 0;
    }
    &-item{
      display: block;
      position:relative;
      float: left;
      width: 100%;
      .hamburger-panel-link{
        float: left;
        width: 100%;
        padding: 20px 40px 20px 20px;
        font-size: 16px;
        color:white;
        border-top: 1px solid rgba(255,255,255,.1);
      }
    }
    &-arrow{
      position: absolute;
      top: 24px;
      right: 10px;
      width: 30px;
      height: 30px;
      margin-top: -10px;
      background:rgba(131, 131, 131, 0.4);
      color:white;
      text-align: center;
      svg {
        height: 30px;
        width: 20px;
        padding: 2px;
        fill: white;
      }
    }
    &-accordion,
    &-first-row{
      float: left;
      width: 100%;
      background:rgba(131, 131, 131, 0.4);
    }
    .border-top {
      {# Overides border color inside hamburger #}
      border-color: #333332!important;
    }
  }

  .backdrop{
    &.hamburger-overlay{
      z-index: 9998;
    }
    &.hamburger-panel-animated{
      display: block;
    }
  }

  .mobile-nav-categories-container{
    top: 126px;
    margin: 0;
    padding:0 0 200px 0;
    z-index: 1000;
    -webkit-overflow-scrolling: touch;
    overflow: auto;
  }
  .move-list-up{
    .mobile-nav-categories-container,
    .mobile-nav-subcategories-panel{
      top: 80px;
    }
  }

  .mobile-nav-arrow-up {
    position: absolute;
    height: 18px;
    width: 100%;
    text-align: center;
  }
  .mobile-categories-visible .mobile-nav-arrow-up {
    display: block;
  }

  .mobile-search-input-back,
  .mobile-search-input-submit{
    height: auto;
    width: 20px;
    padding: 0;
    border: 0;
    margin-top: 14px;
    background: none;
  }
  .mobile-search-input{
    width: 80%;
    height: 40px;
    margin: 3px 0 3px 10px;
    padding: 10px;
    border: 0;
    font-size: 14px;
    font-weight: normal;
    &:focus{
      border: 0;
      outline: 0;
      box-shadow: none;
    }
  }
    
  .search-suggest{
    position: fixed;
    top: 50px;
    z-index: 3000;
    display: none;
    height: 100%;
    width: 100%;
    box-sizing:border-box;
    margin: 0;
    padding-bottom: 1000px;
    overflow-y: scroll;
    &-link{
      padding: 20px 15px;
    }
  }

  {# /* //// Product grid */ #}

  .checkbox-container .checkbox-color {
    margin-top: -8px;
  }
  
  {# /* //// Product detail */ #}

  {# /* Image */ #}

  .zoom-svg-icon{
    width: 24px;
    height: 24px;
  }
  .mobile-zoom-panel{
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 9999;
    width: 100%;
    height: 100%;
    overflow: auto;
    .mobile-zoom-image-container{
      margin: 15px;
      max-height: 95%;
    }
    .mobile-zoom-spinner{
      display: none;
      position: absolute;
      top: 40%;
      left: 50%;
      z-index: 99;
      margin-left: -15px;
    }
    img{
      width: 100%;
      max-height: inherit;
    }
  }

  .desktop-zoom-container:hover .product-slider-image:not(.desktop-zoom-big) {
    opacity: 1;
  }

  {# /* Form and info */ #}

  .btn-variant-container{
    padding-top: 0;
  }
  .panel-mobile-variant {
    left: 0;
  }
    
  {# /* //// Footer */ #}

  .footer{
    padding: 0 0 10px 0;
    &-title{
      margin-top: 30px;
      text-align: center;
    }
    &-list li{
      margin-bottom: 15px;
      text-align: center;
    }
    &-payship-img{
      margin: 5px;
    }
  }  

  .powered-by-logo{
    float: none;
    margin: auto;
  }  

  {# /* //// Cart page */ #}

  {# /* Table */ #}

  .cart-table-row-md-flex,
  .cart-product-row-md {
    display: block;
    align-items: initial;
  }

  .cart-item-subtotal{
    margin-bottom: 10px;
    text-align: right;
    font-weight: bold;
  }
  .cart-quantity-btn {
    &.small {
      padding: 6px;
    }
  }
  .cart-quantity-input {
    &.small{ 
      width: 40px;
      height: 30px;
    }
  }
  .cart-delete-container{
    position: absolute;
    right: 0;
    padding: 0;
    .cart-btn-delete{
      padding: 0 10px 0 0; 
    }
  }
  .cart-delete-svg-icon{
    width: 25px;
    height: 25px;
  }
  .cart-quantity-input-container .cart-item-spinner{
    padding: 5px 10px;
  }
}

{#/*============================================================================
  #Critical path utilities
==============================================================================*/#}

.visible-when-content-ready{
  visibility: visible!important;
}
.display-when-content-ready{
  display: block!important;
}
.hidden-when-content-ready{
  display: none;
}
.product-single-image{
  height: auto;
}

/* ======================================================
   INICIO AJUSTE BANNER PRINCIPAL FULL WIDTH - DESKTOP
   ====================================================== */
/* Banner principal - Full width forçado */
@media screen and (min-width: 768px) {
  
  /* Container principal - Remove container padrão */
  body .js-home-main-slider-container {
    width: 100% !important;
    max-width: 100% !important;
    margin-left: 0 !important;
    margin-right: 0 !important;
    padding-left: 0 !important;
    padding-right: 0 !important;
  }
  
  /* Slider específico - Força largura total */
  body .home-slider,
  body .js-home-slider {
    width: 100% !important;
    max-width: 100% !important;
    margin: 0 !important;
    padding-left: 0 !important;
    padding-right: 0 !important;
  }
  
  /* Container Swiper - Remove limitações */
  body .js-home-slider.swiper-container,
  body .home-slider.swiper-container {
    max-width: 100% !important;
    width: 100% !important;
    margin-left: 0 !important;
    margin-right: 0 !important;
  }
  
  /* Wrapper e slides */
  body .js-home-slider .swiper-wrapper {
    width: 100% !important;
  }
  
  body .js-home-slider .swiper-slide {
    width: 100% !important;
  }
  
  /* Imagens ocupam 100% */
  body .js-home-slider img,
  body .home-slider img,
  body .slide-img {
    width: 100% !important;
    height: auto !important;
    max-width: 100% !important;
  }
  
  /* Remove margens do container com classe m-bottom */
  body .home-slider.m-bottom,
  body .js-home-slider.m-bottom {
    margin-left: 0 !important;
    margin-right: 0 !important;
    margin-top: 0 !important;
  }
}

/* Desktop médio - Força override */
@media screen and (min-width: 992px) {
  body .home-slider,
  body .js-home-slider,
  body .js-home-main-slider-container {
    max-width: 100% !important;
    width: 100% !important;
  }
}

/* Desktop grande - Remove limite de 1170px */
@media screen and (min-width: 1200px) {
  body .container .home-slider,
  body .home-slider {
    max-width: 100% !important;
    width: 100% !important;
    margin: 0 !important;
  }
}

/* Desktop extra grande - Override específico do Trend */
@media screen and (min-width: 1368px) {
  body .home-slider,
  body .js-home-slider {
    max-width: 100% !important;
    margin: 0 !important;
  }
}

/* Remove possíveis containers limitadores */
@media screen and (min-width: 768px) {
  body .js-home-sections-container .js-home-main-slider-container,
  body #home-slider .js-home-main-slider-container {
    width: 100% !important;
    max-width: 100% !important;
    padding: 0 !important;
    margin: 0 !important;
  }
}

/* Garante que o container pai não limite */
@media screen and (min-width: 768px) {
  body [data-store="home-slider"] {
    width: 100% !important;
    max-width: 100% !important;
    margin: 0 !important;
    padding: 0 !important;
  }
}

/* ======================================================
   FINAL DO AJUSTE BANNER PRINCIPAL FULL WIDTH - DESKTOP
   ====================================================== */

/* ==============================================
   MELHORIAS OPCIONAIS - BANNER FULL WIDTH
   Adicione após o código principal se desejar
   ============================================== */

/* 2. Transição suave entre slides */
body .home-slider .swiper-slide {
  transition: opacity 0.5s ease-in-out;
}

/* 3. Melhora controles de navegação */
@media screen and (min-width: 768px) {
  body .js-home-slider .swiper-button-prev {
    left: 30px;
    border-radius: 50%;
    width: 50px;
    height: 50px;
  }
  
  body .js-home-slider .swiper-button-next {
    right: 30px;
    border-radius: 50%;
    width: 50px;
    height: 50px;
  }
  
  /* Hover nos controles */
  body .js-home-slider .swiper-button-prev:hover,
  body .js-home-slider .swiper-button-next:hover {
    transform: scale(1.1);
    transition: all 0.3s ease;
  }
}

/* 4. Altura máxima para evitar banners muito altos */
@media screen and (min-width: 768px) {
  body .home-slider .swiper-slide img {
    max-height: 600px;
    object-fit: cover;
  }
}

/* 5. Loading placeholder enquanto carrega imagem */
body .home-slider .swiper-slide {
  background: #f5f5f5;
  background-image: linear-gradient(90deg, #f5f5f5 25%, #e5e5e5 50%, #f5f5f5 75%);
  background-size: 200% 100%;
  animation: loading 1.5s infinite;
}

@keyframes loading {
  0% { background-position: 200% 0; }
  100% { background-position: -200% 0; }
}

/* Remove animation quando imagem carrega */
body .home-slider .swiper-slide img {
  animation: none;
  background: none;
}
/* ======================================================
   FINAL DO MELHORIAS AJUSTE BANNER PRINCIPAL FULL WIDTH - DESKTOP
   ====================================================== */

/* ==============================================
   CORREÇÕES DE COMPATIBILIDADE - TEMA TREND
   Bordas Arredondadas com Alta Especificidade
   ============================================== */

/* Reset de elementos que podem interferir */
body .js-item-product .item-info:before,
body .js-masonry-grid-item .item-info:before {
  display: none !important;
  border: none !important;
  content: none !important;
}

/* Força border-radius com alta especificidade */
body .js-item-product.item-container .item,
body .js-masonry-grid-item .item,
body .swiper-slide .item,
body .grid .item,
body .products-slider-item .item {
  border-radius: 16px !important;
  overflow: hidden !important;
  position: relative !important;
  transition: transform 0.3s ease, box-shadow 0.3s ease !important;
}

/* Container principal com especificidade máxima */
body .container .item,
body .js-product-table .item,
body .js-product-container .item {
  border-radius: 16px !important;
  overflow: hidden !important;
}

/* Imagens e containers */
body .item .item-image-container {
  border-radius: 16px 16px 0 0 !important;
  overflow: hidden !important;
  position: relative !important;
}

body .item .item-image-container img,
body .item .item-image,
body .item .item-image-featured,
body .item .item-image-secondary {
  border-radius: 16px 16px 0 0 !important;
  object-fit: cover !important;
}

/* Container de informações */
body .item .item-info-container {
  border-radius: 0 0 16px 16px !important;
  position: relative !important;
  background-color: inherit !important;
}

/* Remove sombra padrão e aplica nova no hover */
body .item {
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1) !important;
}

body .item:hover {
  transform: translateY(-5px) !important;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15) !important;
  z-index: 10 !important;
}

/* Produtos em sliders */
body .swiper-container .swiper-slide .item {
  border-radius: 16px !important;
  margin: 5px !important;
}

/* Quickshop */
body .js-quickshop-container .item-image-container {
  border-radius: 16px !important;
}

/* Produtos relacionados */
body .js-related-products .item,
body .related-products .item {
  border-radius: 16px !important;
}

/* Página de produto */
body #single-product .product-slider-container,
body #single-product .product-slide,
body #single-product .cloud-zoom {
  border-radius: 16px !important;
  overflow: hidden !important;
}

/* Carrinho */
body .ajax-cart-item .cart-item-image,
body .cart-item .card-img-square-container,
body .cart-item-image {
  border-radius: 12px !important;
  overflow: hidden !important;
}

/* Mobile */
@media (max-width: 767px) {
  body .item,
  body .js-item-product .item,
  body .item .item-image-container,
  body .item .item-info-container {
    border-radius: 12px !important;
  }
  
  body .item .item-image-container,
  body .item .item-image-container img {
    border-radius: 12px 12px 0 0 !important;
  }
  
  body .item .item-info-container {
    border-radius: 0 0 12px 12px !important;
  }
  
  body .item:hover {
    transform: none !important;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1) !important;
  }
}

/* Correção para labels e badges */
body .item .labels-floating {
  border-radius: 16px 0 0 0 !important;
  overflow: visible !important;
}

body .item .label {
  border-radius: 0 !important;
}

/* Garantir que nada ultrapasse as bordas */
body .item * {
  max-width: 100% !important;
}
/* ==============================================
  FINAL CORREÇÕES DE COMPATIBILIDADE - TEMA TREND
   Bordas Arredondadas com Alta Especificidade
   ============================================== */

/* ==============================================
   CSS ULTRA SEGURO - MÍNIMAS ALTERAÇÕES
   Não quebra layout, apenas melhora
   ============================================== */

/* 1. Altura mínima para cartões */
.item {
  min-height: 380px;
}

/* 2. Nome do produto com altura fixa */
.item-name {
  height: 40px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}

/* 3. Container de preço com altura mínima */
.item-price-container {
  min-height: 50px;
}

/* 4. Mobile - ajustes proporcionais */
@media (max-width: 767px) {
  .item {
    min-height: 340px;
  }
  
  .item-name {
    height: 36px;
    font-size: 12px;
  }
}

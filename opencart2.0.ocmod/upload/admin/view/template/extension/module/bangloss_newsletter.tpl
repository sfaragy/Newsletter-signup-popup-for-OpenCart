<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-module" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb){ ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if($error_warning){ ?>
    <div class="alert alert-danger alert-dismissible"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php }  ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-module" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name" class="form-control" />
              <?php if($error_name){ ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php }  ?>
            </div>
          </div>
          <div class="tab-pane">
          <ul class="nav nav-tabs" id="language">
              <?php foreach ($languages as $language) { ?>
              <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
              <?php } ?>
            </ul>
            <div class="tab-content">
              <?php foreach($languages as $language){ ?>
              <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="module_description[<?php echo $language['language_id']; ?>][title]" placeholder="<?php echo $entry_title; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description[$language['language_id']]['title']) ? $module_description[$language['language_id']]['title'] : ''; ?>" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-popup_text_line1<?php echo $language['language_id']; ?>"><?php echo $entry_popup_text_line1; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="module_description[<?php echo $language['language_id']; ?>][popup_text_line1]" placeholder="<?php echo $entry_popup_text_line1; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description[$language['language_id']]['popup_text_line1']) ? $module_description[$language['language_id']]['popup_text_line1'] : ''; ?>" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-popup_text_line2<?php echo $language['language_id']; ?>"><?php echo $entry_popup_text_line2; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="module_description[<?php echo $language['language_id']; ?>][popup_text_line2]" placeholder="<?php echo $entry_popup_text_line2; ?>" id="input-heading<?php echo $language['language_id']; ?>" value="<?php echo isset($module_description[$language['language_id']]['popup_text_line2']) ? $module_description[$language['language_id']]['popup_text_line2'] : ''; ?>" class="form-control" />
                  </div>
                </div>

                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
                  <div class="col-sm-10">
                        <textarea name="module_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control summernote"><?php echo isset($module_description[$language['language_id']]['description']) ? $module_description[$language['language_id']]['description'] : ''; ?></textarea>

                  </div>
                </div>
              </div>
              <?php } ?>
            </div>
          </div> 

          <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_image; ?></label>
                <div class="col-sm-10"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                  <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                </div>
              </div>

             <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_theme; ?></label>
                <div class="col-sm-10 radiotheme">
                    <?php for($i=1; $i<=5; $i++){ ?>
                        
                        <?php if($theme == $i){ ?>
                            <input type="radio" name="theme" value="<?php echo $i; ?>" id="input-theme" class="modin_<?php echo $i; ?>" checked /><a data-idd="<?php echo $i; ?>" class="modin" data-toggle="modal" data-target="#banglosspopup<?php echo $i; ?>"> Theme <?php echo $i; ?></a>
                        <?php } else { ?>
                            <input type="radio" name="theme" value="<?php echo $i; ?>" id="input-theme"  class="modin_<?php echo $i; ?>" /><a  data-idd="<?php echo $i; ?>"  class="modin" data-toggle="modal" data-target="#banglosspopup<?php echo $i; ?>"> Theme <?php echo $i; ?></a>
                        <?php }  ?>
                    <?php } ?>
                </div>
              
                    <div class="col-sm-12">
            <?php for($ix=1; $ix<=5; $ix++){ ?>
             
                    
                        <div id="banglosspopup<?php echo $ix; ?>" class="modal fade banglossmodal" role="dialog">
                        <div class="modal-dialog">

                            <div class="modal-content">
                           <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <div class="modal-body">
                               

                               <div class="banglossbackground">
                                    <div class="img-sect">
                                    </div>
                                </div>
                                <div id="popup_sect" class="popup_text" style="">
                                   
                                        <div class="popup_text_lines">
                                            <div class="popup_text_line1">
                                            Lorem ipsum popup_text_line1
                                            </div>

                                            <div class="popup_text_line2">
                                                Lorem ipsum popup_text_line2
                                                
                                            </div>

                                            <div class="form_area">
                                                <div class="form_fields">
                                                    <input type="text" name="email" id="input-bossnewsletter" class="form-control" placeholder="Enter your email address">
                                                </div>
                                                <div class="form_fields">
                                                    <button class="btn btn-subscribe">Get Coupon</button>
                                                </div>
                                            </div>
                                            <div class="popup_text_line3">
                                                <p>Lorem ipsum popup_text_line3</p>
                                                <p>Lorem ipsum popup_text_line3</p>                                            
                                            </div>
                                            
                                        </div>
                               
                                  
                                </div>
                            </div>
                           
                            </div>

                        </div>
                        </div>

              <?php } ?>
              

                    </div>
              </div>
           <div class="form-group">
            <label class="col-sm-2 control-label" for="input-entry_time_to_open"><?php echo $entry_time_to_open; ?></label>
            <div class="col-sm-10">
              <input type="text" name="time_open" value="<?php echo $time_open; ?>" placeholder="<?php echo $entry_time_to_open; ?>" id="input-entry_time_to_open" class="form-control" />
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-entry_time_to_close"><?php echo $entry_time_to_close; ?></label>
            <div class="col-sm-10">
              <input type="text" name="time_close" value="<?php echo $time_close; ?>" placeholder="<?php echo $entry_time_to_close; ?>" id="input-entry_time_to_close" class="form-control" />
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-entry_popup_width"><?php echo $entry_popup_width; ?></label>
            <div class="col-sm-10">
              <input type="text" name="width" value="<?php echo $width; ?>" placeholder="<?php echo $entry_popup_width; ?>" id="input-entry_popup_width" class="form-control" />
            </div>
          </div>


          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                <?php if($status){ ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php }  ?>
              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

 
 <style>
   .banglossbackground {
        width: 100%;
        max-width: 100%;
        position: relative;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background: #1eadff url('http://www.bangloss.com/bangloss/bangloss_newsletter.png');
        background-position: center left;
        background-repeat: no-repeat;
        background-size: cover;
    }
    #banglosspopup1.banglossmodal .modal-body {
        display: flex;
        justify-content: center;
        flex-basis: unset;
        flex-flow: unset;
        padding: 0;
    }

    #banglosspopup5.banglossmodal .modal-body {
        display: flex;
        justify-content: center;
        flex-basis: unset;
        flex-flow: unset;
        padding: 0;
    }

    #banglosspopup2.banglossmodal .modal-body {
        display: flex;
        justify-content: center;
        flex-basis: unset;
        flex-flow: row-reverse;
        padding: 0;
    }

    .popup_text {
        width: 100%;
        padding: 10px;
    }

    .popup_text_line1 {
        color: #111111;
        font-size: 15px;
        font-weight: 700;
        font-family: inherit;
        text-align: center;
        line-height: 27px;
    }

    .popup_text_line2 {
        text-align: center;
        margin: 20px;
        font-size: 27px;
        text-transform: uppercase;
    }

    .form_fields {
        display: flex;
        justify-content: center;
        width: 100%;
        padding: 0;
        margin: 20px auto;
    }

    .btn.btn-subscribe {
        background: linear-gradient(to right, #1eadff, #5ab9ee,#5ebbf0d4);
        padding: 11px 30px;
        font-size: 15px;
        color: #ffffff;
        font-weight: 700;
    }

    .popup_text_line3 {
        text-align: left;
        margin-top: 20px;
    }

    #banglosspopup1.banglossmodal .close {
        background: #000 !important;
        opacity: 1;
        padding: 5px 10px !important;
        position: relative;
        border-radius: 100%;
        color: #fff;
        margin: -10px;
    }

    #banglosspopup5.banglossmodal .close {
        background: #000 !important;
        opacity: 1;
        padding: 5px 10px !important;
        position: relative;
        border-radius: 100%;
        color: #fff;
        margin: -10px;
    }

    #banglosspopup2.banglossmodal .close {
        background: #000 !important;
        opacity: 1;
        padding: 5px 10px !important;
        position: relative;
        border-radius: 100%;
        color: #fff;
        margin: -10px;
        float: left;
    }  
    #banglosspopup3.banglossmodal .close {
        background: #000 !important;
        opacity: 1;
        padding: 5px 10px !important;
        position: absolute;
        border-radius: 100%;
        color: #fff;
        margin: -10px;
        float: right;
        z-index: 999999;
    }

    #banglosspopup4.banglossmodal .close {
        background: #000 !important;
        opacity: 1;
        padding: 5px 10px !important;
        position: absolute;
        border-radius: 100%;
        color: #fff;
        margin: -10px;
        float: right;
        z-index: 999999;
    }

    #banglosspopup3.banglossmodal .banglossbackground {
        width: 100%;
        max-width: 100%;
        position: relative;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background: #1eadff url('http://www.bangloss.com/bangloss/bangloss_newsletter.png');
        background-position: center left;
        background-repeat: no-repeat;
        background-size: cover;
        height: 170px;
    }

    #banglosspopup3.banglossmodal .modal-body {
        display: flex;
        justify-content: center;
        flex-basis: unset;
        flex-flow: column;
        padding: 0;
    }

    #banglosspopup4.banglossmodal .modal-body {
        display: flex;
        justify-content: center;
        flex-basis: unset;
        flex-flow: column-reverse;
        padding: 0;
    }
    #banglosspopup4.banglossmodal .banglossbackground {
        width: 100%;
        max-width: 100%;
        position: relative;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background: #1eadff url('http://www.bangloss.com/bangloss/bangloss_newsletter.png');
        background-position: center left;
        background-repeat: no-repeat;
        background-size: cover;
        height: 170px;
    }

    
    #banglosspopup5.banglossmodal .banglossbackground {
        width: 100%;
        max-width: 100%;
        position: relative;
        margin: 0;
        padding: 0;
        overflow: hidden;
        background: #1eadff url('http://www.bangloss.com/bangloss/bangloss_newsletter.png');
        background-position: center left;
        background-repeat: no-repeat;
        background-size: contain;
    }




 </style> 
    
 <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
 <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
 <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>  
 <script type="text/javascript"><!--
    $('#language a:first').tab('show');

        $('.modin').on('click', function(){
            $('input[name="theme"]').each(function(){
                $(this).attr("checked", false);
            });
            var id = $(this).data('idd');

            $('.modin_'+id).attr("checked", true);
             $('.modin_'+id).click();
            
        });
        
         
//--></script></div>
<?php echo $footer; ?>
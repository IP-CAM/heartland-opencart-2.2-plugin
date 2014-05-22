<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <input type="hidden" name="securesubmit_module[1][position]" value="content_top" />
      <input type="hidden" name="securesubmit_module[1][layout_id]" value="7" />
      <input type="hidden" name="securesubmit_module[1][status]" value="1" />
      <input type="hidden" name="securesubmit_module[1][sort_order]" value="0" />
        <table class="form">
          <tr>
            <td><?php echo $entry_test_private_key; ?></td>
            <td><input type="text" name="securesubmit_test_private_key" size="70" value="<?php echo $securesubmit_test_private_key; ?>" />
              <?php if ($error_test_private_key) { ?>
              <span class="error"><?php echo $error_test_private_key; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_test_public_key; ?></td>
            <td><input type="text" name="securesubmit_test_public_key" size="70" value="<?php echo $securesubmit_test_public_key; ?>" />
              <?php if ($error_test_public_key) { ?>
              <span class="error"><?php echo $error_test_public_key; ?></span>
              <?php } ?></td>
          </tr>

          <tr>
            <td><?php echo $entry_live_private_key; ?></td>
            <td><input type="text" name="securesubmit_live_private_key" size="70" value="<?php echo $securesubmit_live_private_key; ?>" />
              <?php if ($error_live_private_key) { ?>
              <span class="error"><?php echo $error_live_private_key; ?></span>
              <?php } ?></td>
          </tr>
          <tr>
            <td><?php echo $entry_live_public_key; ?></td>
            <td><input type="text" name="securesubmit_live_public_key" size="70" value="<?php echo $securesubmit_live_public_key; ?>" />
              <?php if ($error_live_public_key) { ?>
              <span class="error"><?php echo $error_live_public_key; ?></span>
              <?php } ?></td>
          </tr>


          <tr>
            <td><?php echo $entry_mode; ?></td>
            <td><select name="securesubmit_mode">
                <?php if ($securesubmit_mode == 'test') { ?>
                <option value="test" selected="selected"><?php echo $text_test; ?></option>
                <?php } else { ?>
                <option value="test"><?php echo $text_test; ?></option>
                <?php } ?>
                <?php if ($securesubmit_mode == 'live') { ?>
                <option value="live" selected="selected"><?php echo $text_live; ?></option>
                <?php } else { ?>
                <option value="live"><?php echo $text_live; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_method; ?></td>
            <td><select name="securesubmit_method">
                <?php if ($securesubmit_method == 'authorization') { ?>
                <option value="authorization" selected="selected"><?php echo $text_authorization; ?></option>
                <?php } else { ?>
                <option value="authorization"><?php echo $text_authorization; ?></option>
                <?php } ?>
                <?php if ($securesubmit_method == 'capture') { ?>
                <option value="capture" selected="selected"><?php echo $text_capture; ?></option>
                <?php } else { ?>
                <option value="capture"><?php echo $text_capture; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_total; ?></td>
            <td><input type="text" name="securesubmit_total" value="<?php echo $securesubmit_total; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_order_status; ?></td>
            <td><select name="securesubmit_order_status_id">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $securesubmit_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="securesubmit_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $securesubmit_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="securesubmit_status">
                <?php if ($securesubmit_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="securesubmit_sort_order" value="<?php echo $securesubmit_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?> 
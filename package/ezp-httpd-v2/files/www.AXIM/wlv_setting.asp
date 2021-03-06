<script language="javascript" type="text/javascript"> 
var F;

wlv_basic_objects[$0][$1] =
[ { name: 'wl$0_ssid$1_enable' },
  { name: 'wl$0_ssid$1_ssid' },
  { name: 'wl$0_ssid$1_hide' },
  { name: 'wl$0_ssid$1_wme_enable' },
  { name: 'wl$0_ssid$1_isolation_enable' },
  { name: 'wl$0_ssid$1_secmode' },
  { name: 'wl$0_ssid$1_key_index' },
  { name: 'wl$0_ssid$1_key1' },
  { name: 'wl$0_ssid$1_key2' },
  { name: 'wl$0_ssid$1_key3' },
  { name: 'wl$0_ssid$1_key4' },
  { name: 'wl$0_ssid$1_key' },
  { name: 'wl$0_ssid$1_crypto' },
  { name: 'wl$0_ssid$1_radius_ipaddr' },
  { name: 'wl$0_ssid$1_radius_port' },
  { name: 'wl$0_ssid$1_radius_key' },
  { name: 'wl$0_ssid$1_rekey_mode' },
  { name: 'wl$0_ssid$1_rekey_time_interval' },
  { name: 'wl$0_ssid$1_rekey_pkt_interval' }
];

wlv_local_basic_objects[$0][$1] =
[ { name: 'wl$0_ssid$1_ssid' },
  { name: 'wl$0_ssid$1_hide' },
  { name: 'wl$0_ssid$1_wme_enable' },
  { name: 'wl$0_ssid$1_isolation_enable' },
  { name: 'wl$0_ssid$1_secmode' },
  { name: 'wl$0_ssid$1_key_index' },
  { name: 'wl$0_ssid$1_key1' },
  { name: 'wl$0_ssid$1_key2' },
  { name: 'wl$0_ssid$1_key3' },
  { name: 'wl$0_ssid$1_key4' },
  { name: 'wl$0_ssid$1_key' },
  { name: 'wl$0_ssid$1_crypto' },
  { name: 'wl$0_ssid$1_radius_ipaddr' },
  { name: 'wl$0_ssid$1_radius_port' },
  { name: 'wl$0_ssid$1_radius_key' },
  { name: 'wl$0_ssid$1_rekey_mode' },
  { name: 'wl$0_ssid$1_rekey_time_interval' },
  { name: 'wl$0_ssid$1_rekey_pkt_interval' }
];

</script>

<div class="row">
    <div class="span12">
        <legend><%lang("WLAN");%> <%increase("$0","1");%> - <%lang("SSID");%> <%increase("$1","1");%></legend>
      <input type="hidden" name="wl$0_ssid$1_txrate" id="wl$0_ssid$1_txrate" value='<% nvg_attr_get("wl$0_ssid$1_txrate","wl$0_basic_rule","$1","rate");%>'>

        <div class="row show-grid">
            <div class="span4"><% lang("Wireless SSID"); %></div>
            <div class="span8">
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_enable" id="wl$0_ssid$1_enable" value="1" onclick="wl_ssid_enable_disable(this.form, $0, $1)" 
                    <%nvg_attr_match("wl$0_ssid$1_enable", "wl$0_basic_rule", "$1", "enable", "1", "checked");%>>
                    <% lang("Enable"); %>
                </label>
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_enable" id="wl$0_ssid$1_enable" value="0" onclick="wl_ssid_enable_disable(this.form, $0, $1)" 
                    <%nvg_attr_match("wl$0_ssid$1_enable", "wl$0_basic_rule", "$1", "enable", "0", "checked");%>>
                    <% lang("Disable"); %>
                </label>
            </div>
        </div>

        <div class="row show-grid">
            <div class="span4"><% lang("Wireless SSID Name"); %></div>
            <div class="span8">
              <input type="text" name="wl$0_ssid$1_ssid" id="wl$0_ssid$1_ssid" 
                onchange="wl_valid_ssid(this)" value='<% nvg_attr_get("wl$0_ssid$1_ssid","wl$0_ssid_rule","$1","ssid");%>'>
            </div>
        </div>

        <div class="row show-grid">
            <div class="span4"><% lang("Wireless SSID Broadcasting"); %></div>
            <div class="span8">
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_hide" id="wl$0_ssid$1_hide" value="0" 
                    <%nvg_attr_match("wl$0_ssid$1_hide", "wl$0_basic_rule", "$1", "hidden", "0", "checked");%>><% lang("Enable"); %>
                </label>
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_hide" id="wl$0_ssid$1_hide" value="1" 
                    <%nvg_attr_match("wl$0_ssid$1_hide", "wl$0_basic_rule", "$1", "hidden", "1", "checked");%>><% lang("Disable"); %>
                </label>
            </div>
        </div>

        <div class="row show-grid">
            <div class="span4"><%lang("Wi-Fi Multimedia");%> (WMM)</div>
            <div class="span8">
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_wme_enable" id="wl$0_ssid$1_wme_enable" 
                    value="1" <%nvg_attr_match("wl$0_ssid$1_wme_enable", "wl$0_basic_rule", "$1", "wme", "1", "checked");%>><% lang("Enable"); %>
                </label>
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_wme_enable" id="wl$0_ssid$1_wme_enable" 
                    value="0" <%nvg_attr_match("wl$0_ssid$1_wme_enable", "wl$0_basic_rule", "$1", "wme", "0", "checked");%>><% lang("Disable"); %></input>
                </label>
            </div>
        </div>

        <div class="row show-grid">
            <div class="span4"><%lang("Wireless Isolation");%></div>
            <div class="span8">
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_isolation_enable" id="wl$0_ssid$1_isolation_enable"
                    value="1" <%nvg_attr_match("wl$0_ssid$1_isolation_enable", "wl$0_basic_rule", "$1", "isolation", "1", "checked");%>><% lang("Enable"); %>
                </label>
                <label class="radio inline">
                  <input type=radio name="wl$0_ssid$1_isolation_enable" id="wl$0_ssid$1_isolation_enable" 
                    value="0" <%nvg_attr_match("wl$0_ssid$1_isolation_enable", "wl$0_basic_rule", "$1", "isolation", "0", "checked");%>><% lang("Disable"); %>
                </label>
            </div>
        </div>

        <div class="row show-grid">
            <div class="span4"><% lang("Security Mode"); %></div>
            <div class="span8">
              <select name="wl$0_ssid$1_secmode" id="wl$0_ssid$1_secmode" onchange="SelWL(this.form)">
              <option value="disabled" <%nvg_attr_match("wl$0_ssid$1_secmode", "wl$0_sec_rule", "$1", "sec_mode", "disabled", "selected");%>><% lang("Disable"); %></option>
              <option value="wep" <%nvg_attr_match("wl$0_ssid$1_secmode", "wl$0_sec_rule", "$1", "secmode", "wep", "selected");%>><% lang("WEP"); %></option>
              <option value="psk" <%nvg_attr_match("wl$0_ssid$1_secmode", "wl$0_sec_rule", "$1", "secmode", "psk", "selected");%>><% lang("WPA PSK (Pre-Shared Key)"); %></option>
              <option value="wpa" <%nvg_attr_match("wl$0_ssid$1_secmode", "wl$0_sec_rule", "$1", "secmode", "wpa", "selected");%>><% lang("WPA (Radius)"); %></option>
              <option value="psk2" <%nvg_attr_match("wl$0_ssid$1_secmode", "wl$0_sec_rule", "$1", "secmode", "psk2", "selected");%>><% lang("WPA2 PSK (Pre-Shared Key)"); %></option>
              <option value="wpa2" <%nvg_attr_match("wl$0_ssid$1_secmode", "wl$0_sec_rule", "$1", "secmode", "wpa2", "selected");%>><% lang("WPA2 (Radius)"); %></option>
              </select>
            </div>
        </div>
      <% wlv_sec_show_setting($0, $1);%>
    
    </div>
</div><!-- row -->
<br/>


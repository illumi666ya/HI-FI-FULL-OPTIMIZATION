# ILLUMI
# DEMONICA
# www.bento.me/illumi

# POST-FS-DATA.SH
# MODDIR
MODDIR=${0%/*}

# BOOT
while [ -z "$(resetprop sys.boot_completed)" ]; do
  sleep 1
done

# WAIT
until [ "`getprop sys.boot_completed`" == 1 ]; do
  sleep 1
done

# WAIT V2
wait_until_boot_complete() {
  while [[ "$(getprop sys.boot_completed)" != "1" ]]; do
    sleep 1
  done
}
wait_until_boot_complete

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# HI-FI FULL OPTIMIZED
setprop vendor.audio.feature.dynamic_ecns.enable true
setprop vendor.audio.feature.external_dsp.enable true
setprop vendor.audio.feature.external_qdsp.enable true
setprop vendor.audio.feature.external_speaker.enable true
setprop vendor.audio.feature.external_speaker_tfa.enable true
setprop vendor.audio.feature.receiver_aided_stereo.enable true
setprop vendor.audio.feature.ext_hw_plugin true
setprop vendor.audio.feature.source_track_enabled true
setprop vendor.audio.feature.keep_alive.enable true
setprop vendor.audio.feature.compress_meta_data.enable false
setprop vendor.audio.feature.compress_in.enable false
setprop vendor.audio.feature.compr_cap.enable false
setprop vendor.audio.feature.compr_voip.enable false
setprop vendor.audio.feature.devicestate_listener.enable false
setprop vendor.audio.feature.thermal_listener.enable false
setprop vendor.audio.feature.power_mode.enable true
setprop vendor.audio.feature.hifi_audio.enable true
setprop vendor.audio.feature.deepbuffer_as_primary.enable false
setprop vendor.audio.aac.sw.decoder.24bit true
setprop vendor.audio.aac.sw.encoder.24bit true
setprop vendor.audio.use.sw.ape.decoder true
setprop vendor.audio.use.sw.alac.decoder true
setprop vendor.audio.flac.sw.decoder.24bit true
setprop vendor.audio.flac.sw.encoder.24bit true
setprop vendor.audio.tunnel.encode true
setprop vendor.audio.deep_buffer.media false
setprop vendor.audio.parser.ip.buffer.size 262144
setprop vendor.audio.hdr.record.enable true
setprop vendor.audio.3daudio.record.enable true
setprop vendor.audio.matrix.limiter.enable 0
setprop vendor.audio.capture.enforce_legacy_copp_sr true
setprop vendor.audio.snd_card.open.retries 50
setprop vendor.audio.volume.headset.gain.depcal true
setprop vendor.audio.hal.output.suspend.supported true
setprop vendor.audio.effect.a2dp.enable 1
setprop vendor.audio.hw.aac.encoder true
setprop vendor.mm.enable.qcom_parser 63963135
setprop vendor.voice.dsd.playback.conc.disabled false

setprop persist.audio.hifi true
setprop persist.audio.hifi.volume 100
setprop persist.audio.hifi.int_codec true
setprop persist.audio.dirac.speaker true
setprop persist.audio.lowlatency.rec true
setprop persist.vendor.audio.deep_buffer.media false
setprop persist.vendor.audio.hifi true
setprop persist.vendor.audio.hifi.int_codec true
setprop persist.vendor.audio.ll_playback_bargein true
setprop persist.vendor.audio.bcl.enabled false
setprop persist.vendor.audio.format.24bit true
setprop persist.vendor.audio_hal.dsp_bit_width_enforce_mode 24
setprop persist.vendor.audio.delta.refresh true
setprop persist.vendor.btstack.enable.lpa false
setprop persist.vendor.bt.a2dp.aac_whitelist false
setprop persist.vendor.bt.aac_frm_ctl.enabled true
setprop persist.vendor.bt.aac_vbr_frm_ctl.enabled true
setprop persist.vendor.btstack.enable.twsplus true
setprop persist.vendor.btstack.enable.twsplussho true
setprop persist.vendor.qcom.bluetooth.scram.enabled false
setprop persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled true
setprop persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled true
setprop persist.vendor.qcom.bluetooth.twsp_state.enabled false
setprop persist.bt.enableAptXHD true
setprop persist.bt.a2dp.aptx_disable false
setprop persist.bt.a2dp.aptx_hd_disable false
setprop persist.bt.a2dp.aac_disable false
setprop persist.bt.sbc_hd_enabled 1
setprop persist.bluetooth.sbc_hd_higher_bitrate 1
setprop persist.service.btui.use_aptx 1
setprop persist.sys.fflag.override.settings_bluetooth_hearing_aid true

setprop ro.audio.soundfx.dirac true
setprop ro.audio.hifi true
setprop ro.audio.soundtrigger.lowpower false
setprop ro.vendor.audio.hifi true
setprop ro.vendor.audio.soundfx.type dirac
setprop ro.vendor.audio.soundtrigger.adjconf true
setprop ro.vendor.audio.ns.support true
setprop ro.vendor.audio.enhance.support true
setprop ro.vendor.audio.gain.support true
setprop ro.vendor.audio.recording.hd true
setprop ro.qc.audio.deep_buffer.media false
setprop ro.config.media_vol_steps 25
setprop ro.hardware.hifi.support true
setprop ro.ril.enable.amr.wideband 1

setprop use.non-omx.mp3.decoder false
setprop use.non-omx.aac.decoder false
setprop use.non-omx.flac.decoder false
setprop qc.audio.deep_buffer.media false
setprop qc.tunnel.audio.encode true
setprop audio.deep_buffer.media false
setprop audio.effect.a2dp.enable 1

setprop flac.sw.decoder.24bit.support true
setprop tunnel.audio.encode true
setprop media.aac_51_output_enabled true
setprop af.thread.throttle 0
setprop qcom.hw.aac.encoder true

# DISABLE WARNING VOLUME HIGH 
setprop audio.safemedia.bypass true

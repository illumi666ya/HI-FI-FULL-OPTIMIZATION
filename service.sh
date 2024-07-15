# ILLUMI
# DEMONICA
# www.bento.me/illumi

# SERVICE.SH
# MODDIR
MODDIR=${0%/*}

# DETECT BOOT IF COMPLETE OR NOT FROM KTWEAK (TYTYDRACO) , THANKS
while [[ "$(getprop sys.boot_completed)" -ne 1 ]] && [[ ! -d "/sdcard" ]]
do
       sleep 1
done

# WAIT FOR BOOT TO FINISH COMPLETELY
dbg "Sleeping until boot completes."
while [[ `getprop sys.boot_completed` -ne 1 ]]
do
       sleep 1
done

# WAIT TO THE BOOT BE COMPLETED
sleep_needed_time() {
until [[ $(getprop sys.boot_completed) -eq 1 || $(getprop dev.bootcomplete) -eq 1 ]]; do
sleep 1
done
}

sleep_needed_time

##########################################################################################
# BATAS SUCI :V
##########################################################################################

# HI-FI FULL OPTIMIZED
resetprop -n vendor.audio.feature.dynamic_ecns.enable true
resetprop -n vendor.audio.feature.external_dsp.enable true
resetprop -n vendor.audio.feature.external_qdsp.enable true
resetprop -n vendor.audio.feature.external_speaker.enable true
resetprop -n vendor.audio.feature.external_speaker_tfa.enable true
resetprop -n vendor.audio.feature.receiver_aided_stereo.enable true
resetprop -n vendor.audio.feature.ext_hw_plugin true
resetprop -n vendor.audio.feature.source_track_enabled true
resetprop -n vendor.audio.feature.keep_alive.enable true
resetprop -n vendor.audio.feature.compress_meta_data.enable false
resetprop -n vendor.audio.feature.compress_in.enable false
resetprop -n vendor.audio.feature.compr_cap.enable false
resetprop -n vendor.audio.feature.compr_voip.enable false
resetprop -n vendor.audio.feature.devicestate_listener.enable false
resetprop -n vendor.audio.feature.thermal_listener.enable false
resetprop -n vendor.audio.feature.power_mode.enable true
resetprop -n vendor.audio.feature.hifi_audio.enable true
resetprop -n vendor.audio.feature.deepbuffer_as_primary.enable false
resetprop -n vendor.audio.aac.sw.decoder.24bit true
resetprop -n vendor.audio.aac.sw.encoder.24bit true
resetprop -n vendor.audio.use.sw.ape.decoder true
resetprop -n vendor.audio.use.sw.alac.decoder true
resetprop -n vendor.audio.flac.sw.decoder.24bit true
resetprop -n vendor.audio.flac.sw.encoder.24bit true
resetprop -n vendor.audio.tunnel.encode true
resetprop -n vendor.audio.deep_buffer.media false
resetprop -n vendor.audio.parser.ip.buffer.size 262144
resetprop -n vendor.audio.hdr.record.enable true
resetprop -n vendor.audio.3daudio.record.enable true
resetprop -n vendor.audio.matrix.limiter.enable 0
resetprop -n vendor.audio.capture.enforce_legacy_copp_sr true
resetprop -n vendor.audio.snd_card.open.retries 50
resetprop -n vendor.audio.volume.headset.gain.depcal true
resetprop -n vendor.audio.hal.output.suspend.supported true
resetprop -n vendor.audio.effect.a2dp.enable 1
resetprop -n vendor.audio.hw.aac.encoder true
resetprop -n vendor.mm.enable.qcom_parser 63963135
resetprop -n vendor.voice.dsd.playback.conc.disabled false

resetprop -n persist.audio.hifi true
resetprop -n persist.audio.hifi.volume 100
resetprop -n persist.audio.hifi.int_codec true
resetprop -n persist.audio.dirac.speaker true
resetprop -n persist.audio.lowlatency.rec true
resetprop -n persist.vendor.audio.deep_buffer.media false
resetprop -n persist.vendor.audio.hifi true
resetprop -n persist.vendor.audio.hifi.int_codec true
resetprop -n persist.vendor.audio.ll_playback_bargein true
resetprop -n persist.vendor.audio.bcl.enabled false
resetprop -n persist.vendor.audio.format.24bit true
resetprop -n persist.vendor.audio_hal.dsp_bit_width_enforce_mode 24
resetprop -n persist.vendor.audio.delta.refresh true
resetprop -n persist.vendor.btstack.enable.lpa false
resetprop -n persist.vendor.bt.a2dp.aac_whitelist false
resetprop -n persist.vendor.bt.aac_frm_ctl.enabled true
resetprop -n persist.vendor.bt.aac_vbr_frm_ctl.enabled true
resetprop -n persist.vendor.btstack.enable.twsplus true
resetprop -n persist.vendor.btstack.enable.twsplussho true
resetprop -n persist.vendor.qcom.bluetooth.scram.enabled false
resetprop -n persist.vendor.qcom.bluetooth.aac_frm_ctl.enabled true
resetprop -n persist.vendor.qcom.bluetooth.aac_vbr_ctl.enabled true
resetprop -n persist.vendor.qcom.bluetooth.twsp_state.enabled false
resetprop -n persist.bt.enableAptXHD true
resetprop -n persist.bt.a2dp.aptx_disable false
resetprop -n persist.bt.a2dp.aptx_hd_disable false
resetprop -n persist.bt.a2dp.aac_disable false
resetprop -n persist.bt.sbc_hd_enabled 1
resetprop -n persist.bluetooth.sbc_hd_higher_bitrate 1
resetprop -n persist.service.btui.use_aptx 1
resetprop -n persist.sys.fflag.override.settings_bluetooth_hearing_aid true

resetprop -n ro.audio.soundfx.dirac true
resetprop -n ro.audio.hifi true
resetprop -n ro.audio.soundtrigger.lowpower false
resetprop -n ro.vendor.audio.hifi true
resetprop -n ro.vendor.audio.soundfx.type dirac
resetprop -n ro.vendor.audio.soundtrigger.adjconf true
resetprop -n ro.vendor.audio.ns.support true
resetprop -n ro.vendor.audio.enhance.support true
resetprop -n ro.vendor.audio.gain.support true
resetprop -n ro.vendor.audio.recording.hd true
resetprop -n ro.qc.audio.deep_buffer.media false
resetprop -n ro.config.media_vol_steps 25
resetprop -n ro.hardware.hifi.support true
resetprop -n ro.ril.enable.amr.wideband 1

resetprop -n use.non-omx.mp3.decoder false
resetprop -n use.non-omx.aac.decoder false
resetprop -n use.non-omx.flac.decoder false
resetprop -n qc.audio.deep_buffer.media false
resetprop -n qc.tunnel.audio.encode true
resetprop -n audio.deep_buffer.media false
resetprop -n audio.effect.a2dp.enable 1

resetprop -n flac.sw.decoder.24bit.support true
resetprop -n tunnel.audio.encode true
resetprop -n media.aac_51_output_enabled true
resetprop -n af.thread.throttle 0
resetprop -n qcom.hw.aac.encoder true

# DISABLE WARNING VOLUME HIGH 
resetprop -n audio.safemedia.bypass true

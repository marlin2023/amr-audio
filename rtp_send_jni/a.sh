#!/bin/bash
arm-linux-androideabi-gcc -Wall -c  rtp_send_amr.c -I/home/chris/work/rtp-rtcp/ortp-arm/include

arm-linux-androideabi-gcc -Wall -c com_jabber_audio_encoder_AudioTransJniApi.c -I/home/chris/work/rtp-rtcp/ortp-arm/include -I/home/test/jdk-src/jdk1.6.0_26/include -I/home/test/jdk-src/jdk1.6.0_26/include/linux

arm-linux-androideabi-gcc -shared -fPCI -o rtp_send_amr.so rtp_send_amr.o com_jabber_audio_encoder_AudioTransJniApi.o -L/home/chris/work/rtp-rtcp/ortp-arm/lib -lortp

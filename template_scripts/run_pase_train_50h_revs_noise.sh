#!/bin/bash


#kernprof -v -l train.py --batch_size 32 --epoch 50 --save_path ckpt_PASE_50h_newMI_noW_denseskips_omologorevs_noise_tmp \
python -u train.py --batch_size 32 --epoch 50 --save_path ckpt_PASE_50h_newMI_noW_denseskips_omologorevs_noise \
       	--num_workers 4 --warmup 10000000 --net_cfg cfg/workers.cfg \
	--fe_cfg cfg/PASE_dense.cfg --do_eval --data_cfg data/librispeech_data_50h.cfg \
	--min_lr 0.0005 --fe_lr 0.0005 --data_root data/LibriSpeech_50h/all/ \
	--distortion_p 0.5 --dtrans_cfg cfg/distortions/omologo_revs_noise_overlap.cfg \
	--stats data/librispeech_50h_stats.pkl --lrdec_step 30 --lrdecay 0.5 \
	--chunk_size 32000 --random_scale


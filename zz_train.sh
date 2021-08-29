
#ActivityNet-v1.3
python main_gate.py anet RGB --arch batenet50 --num_segments 16 --rescale_to 192 --reso_list 192 --lr 0.002 --lr_steps 20 40 --epochs 50 --wd 1e-4 --npb --ada_reso_skip --init_tau 0.67 --gate_gumbel_softmax --gate_history --gate_hidden_dim 1024 --gbn --grelu --gate_gflops_loss_weight 0.125 --gflops_loss_type upb --batch-size 24 -j 36 --gpus 0 1 2 3 --exp_header anet_16_192_bate50_1024_gsmx_g.125_tsn_upbg_b24_lr.002step_S3_debug --enabled_stages 3

#ActivityNet-v1.3
#python main_gate.py anet RGB --arch resnet50 --num_segments 16 --rescale_to 192 --reso_list 192 --lr 0.001 --lr_steps 60 --epochs 60 --dropout 0.5 --wd 1e-4 --npb  --batch-size 24 -j 36 --gpus 0 1 2 3 --exp_header anet_16_192_res50_tsn_b24_lr.02_debug --enabled_stages 3

# SomethingV1
#python main_gate.py something RGB --arch batenet50 --num_segments 8 --lr 0.02 --lr_steps 20 40 --epochs 50 --wd 5e-4 --npb --ada_reso_skip --init_tau 0.67 --gsmx --gate_history --gate_hidden_dim 1024 --gbn --grelu --gate_gflops_loss_weight 0.125 --gflops_loss_type upb --shift --batch-size 64 -j 72 --gpus 0 1 2 3 --exp_header sthv1_8_bate50_1024_gsmx_g.125_tsm_upbg_b64_lr.02step_S3_debug --enabled_stages 3

# SomethingV2
#python main_gate.py somethingv2 RGB --arch batenet50 --num_segments 8 --lr 0.02 --lr_steps 20 40 --epochs 50 --wd 5e-4 --npb --ada_reso_skip --init_tau 0.67 --gsmx --gate_history --gate_hidden_dim 1024 --gbn --grelu --gate_gflops_loss_weight 0.075 --gflops_loss_type real --shift --batch-size 64 -j 72 --gpus 0 1 2 3 --exp_header sthv2_8_bate50_1024_gsmx_g.075_tsm_real_b64_lr.02step_enfrom3_debug --enable_from 3

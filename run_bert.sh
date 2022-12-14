export CUDA_VISIBLE_DEVICES=0,1
for((i=0;i<5;i++));
do

python run_bert.py \
--model_type bert \
--model_name_or_path bert-base-chinese \
--do_train \
--do_eval \
--do_test \
--data_dir ./data/data_$i \
--output_dir ./model_bert$i \
--max_seq_length 32 \
--split_num 3 \
--lstm_hidden_size 512 \
--lstm_layers 1 \
--lstm_dropout 0.1 \
--eval_steps 200 \
--per_gpu_train_batch_size 2 \
--gradient_accumulation_steps 2 \
--warmup_steps 0 \
--per_gpu_eval_batch_size 4 \
--learning_rate 5e-6 \
--adam_epsilon 1e-6 \
--weight_decay 0 \
--train_steps 5000

done






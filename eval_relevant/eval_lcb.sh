path=$1
pwd=$(pwd)

cd $pwd/../LiveCodeBench && python -m lcb_runner.runner.custom_evaluator --custom_output_file $1 --release_version release_v5 --start_date 2024-08-01 --num_process_evaluate 32 --trust_remote_code

exp_dir=$(dirname "$path")
python $pwd/eval_relevant/get_lvb_stats.py --src_dir $exp_dir

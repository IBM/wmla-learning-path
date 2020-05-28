
[[ -d wmla-learning-path ]] || git https://github.com/IBM/wmla-learning-path.git
export PATH=/gpfs/software/wmla-p10a117/wmla_anaconda/b0p036a/anaconda/bin:$PATH
source /gpfs/software/wmla-p10a117/wmla_anaconda/b0p036a/anaconda/envs/powerai162/./etc/profile.d/conda.sh
conda activate base

cd wmla-learning-path
git fetch
git reset --hard origin/master
# Stop start jupyter
ps -ef |  grep -i [j]upyter-notebook.* | grep `whoami` | sed -e "s/ \{1,\}/ /g" | cut -d " " -f2 | xargs -i kill {}
nohup jupyter notebook --ip=0.0.0.0 --allow-root --port=$1 --no-browser --NotebookApp.token='aicoc' --NotebookApp.password='' > classlog.out &


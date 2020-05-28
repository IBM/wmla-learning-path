[[ -d wmla-learning-path ]] || git https://github.com/IBM/wmla-learning-path.git
export PATH=/gpfs/software/wmla-p10a117/wmla_anaconda/b0p036a/anaconda/bin:$PATH
source /gpfs/software/wmla-p10a117/wmla_anaconda/b0p036a/anaconda/envs/powerai162/./etc/profile.d/conda.sh
conda activate base

cd wmla-learning-path
git pull origin master
jupyter contrib nbextension install --user
sleep 5
ps -ef | grep `whoami` | grep -i [j]upyter.* | sed -e "s/ \{1,\}/ /g" | cut -d " " -f2 | xargs -i kill {}
nohup jupyter notebook --ip=0.0.0.0 --allow-root --port=$1 --no-browser --NotebookApp.token='aicoc' --NotebookApp.password='' &



# User1 setup in $HOME
[[ -d wmla-learning-path ]] || git clone https://github.com/IBM/wmla-learning-path.git
export PATH=/gpfs/software/wmla-p10a117/wmla_anaconda/b0p036a/anaconda/bin:$PATH
source /gpfs/software/wmla-p10a117/wmla_anaconda/b0p036a/anaconda/envs/powerai162/./etc/profile.d/conda.sh
conda activate base

cd wmla-learning-path
git fetch
git reset --hard origin/master
# Stop start jupyter
ps -ef |  grep -i [j]upyter-notebook.* | grep `whoami` | sed -e "s/ \{1,\}/ /g" | cut -d " " -f2 | xargs -i kill {}
nohup jupyter notebook --ip=0.0.0.0 --allow-root --port=$1 --no-browser --NotebookApp.token='aicoc' --NotebookApp.password='' > classlog.out &

# User2 setup in $HOME/user2

[[ -d user2/wmla-learning-path ]] || mkdir user2; cd user2;git clone https://github.com/IBM/wmla-learning-path.git

cd ~/user2/wmla-learning-path
git fetch
git reset --hard origin/master
# Stop start jupyter
nohup jupyter notebook --ip=0.0.0.0 --allow-root --port=$2 --no-browser --NotebookApp.token='aicoc' --NotebookApp.password='' > classlog2.out &
 
git init
dvc init
mkdir ../local_remote
dvc remote add -d localremote ../local_remote

python ./generate_data.py 10
dvc add id.csv
git add .gitignore id.csv.dvc
git commit -m "Initial commit of tracked sample.csv"
dvc push

python ./generate_data.py 20
dvc add id.csv
git add .gitignore id.csv.dvc
git commit -m "Updated data sample.csv"
dvc push
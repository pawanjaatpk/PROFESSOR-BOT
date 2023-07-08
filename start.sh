if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/pawanjaatpk/PROFESSOR-BOT.git /PROFESSOR-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PROFESSOR-BOT
fi
cd /PROFESSOR-BOT
pip3 install -U -r requirements.txt
echo "working..."
python3 bot.py

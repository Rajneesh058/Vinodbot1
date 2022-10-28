if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vinodbots /vinodbots
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /vinodbots
fi
cd /vinodbots
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py

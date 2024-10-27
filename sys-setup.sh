# Install required dependencies
echo "Installing required dependecies (git, docker, cron)..."
sudo apt install -y git docker cron

# Enable docker service
echo "Enabling docker service..."
sudo systemctl enable docker

# Enable cron service
echo "Enabling cron service..."
sudo systemctl enable cron 

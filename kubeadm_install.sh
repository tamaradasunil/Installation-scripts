# INSTALL KUBEADM


echo "Add Docker’s official GPG key"
sudo apt-get update -y
sudo apt-get install ca-certificates curl gnupg lsb-release -y

echo "Add Docker’s official GPG key"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "Use the following command to set up the repository:"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Ansible Playbook for Intel SGX
This ansible playbook install Intel SGX driver, SDK and PSW along with the dependencies.
This playbook has been tested with Ansible v2.4 on MacOS.

## Usage
Before you run the playbook make changes in the following files:

#### `ansible.cfg`
Replace the value `remote_user` variable with the ssh username for your remote hosts.

#### `group_vars/all/vars.yaml`
- Replace value for `base_path` with your base working directory in the remote hosts
- Replace the value for `sdk_path` with your desired location for SGX installation in your base working directory or leave it empty if you want to have the installation in the `sgxsdk` directory in your remote base working directory
- Replace the value for of `user` with the ssh username for your remote hosts.

#### `hosts`
Add the hostnames (provided that they are in /etc/hosts) or IP addresses of the remote nodes where you want to perform SGX installation

### Run the playbook using:
`ansible-playbook -i hosts sgx.yaml`

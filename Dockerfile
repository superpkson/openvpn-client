FROM debian:13-slim

RUN apt update && apt install -y openvpn
VOLUME /etc/openvpn/client
CMD ["openvpn", "--config", "/etc/openvpn/client/VPNConfig.ovpn", "--auth-user-pass", "/etc/openvpn/client/pass.txt", "--auth-nocache" ]
# mediasoup-demo v3 (your personal video conference)

This is clone of [mediasoup-demo](https://github.com/versatica/mediasoup-demo)
If you like to see original demo you can use this link [https://v3demo.mediasoup.org](https://v3demo.mediasoup.org)

The main goal of this repo is provide easy way how to deploy this video conference solution on your VPS

> Assumption: you have an VPS e.g. on [DigitalOcean](https://m.do.co/c/552e220b645f), and IP of this VPS is point to your domain
> VPS should have docker and docker-compose installed

### Prepare docker image (build)
- copy `.env.local` to `.env` file
- update environment variables at `.env`
  - MEDIASOUP_LISTEN_IP - external IP address of your VPS
  - MEDIASOUP_ANNOUNCED_IP - external IP address of your VPS
  - DOMAIN - your domain, which is resolved to external IP address of your VPS
  - YOUR_EMAIL - valid email
  - DOCKER_TAG - tag for your docker image (e.g. mangelov/mediasoup-demo:latest)
- npm install
- make build

### Push your docker image to [docker hub](https://hub.docker.com/)
- make push

> You can skip those 2 steps if youl use my docker image mangelov/mediasoup-demo:latest

### Deploy
> Assume you created `/opt/mediasoup` dir on your VPS

- make scp
- make deploy

now you can use your own video conference
`https://<your domain>/index.html`


## Thank you

### Huge thank you for awesome [mediasoup](https://mediasoup.org/) project

* Iñaki Baz Castillo [[website](https://inakibaz.me)|[github](https://github.com/ibc/)]
* José Luis Millán Villegas [[github](https://github.com/jmillan/)]

### for cool [le-nginx](https://github.com/nginx-le/nginx-le) project

* Umputun [[github](https://github.com/umputun/)]

## Author

* Mikhail Angelov[[github](https://github.com/mikhail-angelov/)]

## License

MIT

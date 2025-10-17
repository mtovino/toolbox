# ddns

- Copy `ddns.sh` to somewhere like `/usr/local/bin` and `chmod +x` it
- Replace the TODOs with real values
- Test it by running it
- Once it's working (e.g., host and password are correct) add a cron job:

```
sudo crontab -e
```

and add for exmple:

```
*/15 * * * * /usr/local/bin/ddns.sh
```

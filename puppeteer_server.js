const puppeteer = require('puppeteer');
const http = require('http');
const parser = require('url');

http.createServer((request, response) => {
  const { headers, method, url } = request;
  const query = parser.parse(request.url, true).query;
  const account = query['account'];
  const password = query['password'];

  let body = [];
  request.on('error', (err) => {
    console.error(err);
  }).on('data', (chunk) => {
    body.push(chunk);
  }).on('end', () => {
    (async () => {
      const browser = await puppeteer.launch({headless: false});

      const page = await browser.newPage();
      await page.goto('https://www.facebook.com/');

      const emailElement = await page.$('input#email');
      await emailElement.type(account);

      const passElement = await page.$('input#pass');
      await passElement.type(password);

      const submitElement = await page.$("button[name='login']")
      await submitElement.click()

      await new Promise(resolve => setTimeout(resolve, 10000));
      await browser.close();
    })();

    body = Buffer.concat(body).toString();
    
    response.on('error', (err) => {
      console.error(err);
    });

    response.statusCode = 200;
    response.setHeader('Content-Type', 'application/json');

    const responseBody = { account, password };

    response.write(JSON.stringify(responseBody));
    response.end();
  });
}).listen(8080); // Activates this server, listening on port 8080.

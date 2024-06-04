const nodemailer = require("nodemailer");
require('dotenv').config()
//Create tranSporter
const transporter = () => { 
    return nodemailer.createTransport({
    service: "gmail",
    host: "smtp.gmail.com",
    port: 587,
    secure: false, // Use `true` for port 465, `false` for all other ports
    auth: {
      user: process.env.USER_EMAIL,
      pass: process.env.APP_EMAIL, // app password
    },
  });
}
module.exports = {transporter}
const {transporter} = require("../config/EmailConfig");
// mailOptions Method
const mailOptions = ( receivers, subject, text) => {
  return {
    to: [...receivers], // list of receivers
    subject: subject, // Subject line
    text: text, // plain text body
  };
};
// sendMail Method
const sendMail = async ( mailOptions) => {
  try {
    await transporter().sendMail(mailOptions);
    console.log(`Email has been sent! >> To: ${mailOptions.to}`);
  } catch (err) {
    console.error("SendMail function has an error",err);
  }
};
// sendMailCreateSuccess Method
const sendMailCreateSuccess = async(email) => {
  await sendMail(mailOptions([
    email
  ],"MT5 : MUSIC TEAM 5 , Tạo tài khoản thành công","Bạn đã tạo khoản vào "+ new Date() +"\nChúc bạn một ngày vui vẻ !"))

}
// sendPassByEmail Method
const sendPassByEmail = async(email,pass) => {
  await sendMail(mailOptions([
    email
  ],"MT5 : MUSIC TEAM 5 , Quên mật khẩu được kích hoạt","Bạn đã quên mật khẩu vào "+ new Date() + "\nĐây là password của bạn : "+pass+"\nHãy đổi mật khẩu trước khi sử dụng cho an toàn nhé !"  +"\nChúc bạn một ngày vui vẻ !"))
}
//   sendMail(transporter, mailOptions);
module.exports = { mailOptions ,sendMail,sendMailCreateSuccess,sendPassByEmail};

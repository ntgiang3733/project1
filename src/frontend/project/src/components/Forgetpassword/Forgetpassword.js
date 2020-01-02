import React from "react";

import Header from '../Headers/Header'
import Menu from '../Headers/Menu'

import FooterTop from '../Footer/FooterTop'
import Footer from '../Footer/Footer'
import Body_forgetpassword from "./Body_forgetpassword";
import Body_forgetpassword02 from "./Body_forgetpassword02";

function Register() {
  
  return (
    <>
    <div>
    <Header />
    <Menu/>
    <Body_forgetpassword/>
    <Body_forgetpassword02/>
    <FooterTop/>
    <Footer/>
      </div>
    </>
  );
}

export default Register;

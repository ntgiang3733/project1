import React from "react";

import Header from '../Headers/Header'
import Menu from '../Headers/Menu'

import FooterTop from '../Footer/FooterTop'
import Footer from '../Footer/Footer'
import Body_register01 from "./Body_register01";
import Body_register02 from "./Body_register02";

function Register() {
  
  return (
    <>
    <div>
    <Header />
    <Menu/>
    <Body_register01/>
    <Body_register02/>
    <FooterTop/>
    <Footer/>
      </div>
    </>
  );
}

export default Register;

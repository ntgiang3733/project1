import React from "react";

import Header from '../Headers/Header'
import Menu from '../Headers/Menu'
import Body_login1 from '../Body/Body_Product/Body_login1'
import Body_login2 from '../Body/Body_Product/Body_login2'
import FooterTop from '../Footer/FooterTop'
import Footer from '../Footer/Footer';

function Login() {
  
  return (
    <>
    <div>
    <Header/> 
      <Menu/> 
      
      <Body_login1/>
        <div/>
      <Body_login2/> 
      <FooterTop/>
      <Footer/>
      </div>
    </>
  );
}
export default Login;

import React from "react";

import Header from '../Headers/Header'
import Menu from '../Headers/Menu'

import FooterTop from '../Footer/FooterTop'
import Footer from '../Footer/Footer';
import Body_Checkout from "./Body_Checkout";

function Checkout() {
  
  return (
    <>
    <div>
    <Header/> 
      <Menu/> 
      <Body_Checkout/>
      <FooterTop/>
      <Footer/>
      </div>
    </>
  );
}
export default Checkout;

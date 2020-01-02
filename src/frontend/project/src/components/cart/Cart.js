import React from "react";

import Header from '../Headers/Header'
import Menu from '../Headers/Menu'

import FooterTop from '../Footer/FooterTop'
import Footer from '../Footer/Footer'
import Body_cart01 from "./Body_cart01";
import Body_cart02 from "./Body_cart02";


function Cart() {
  
  return (
    <>
    <div>
    <Header />
    <Menu/>
    <Body_cart01/>
    <Body_cart02/>
    <FooterTop/>
    <Footer/>
      </div>
    </>
  );
}

export default Cart;

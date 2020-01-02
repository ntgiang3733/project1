import React from "react";

import Header from './Headers/Header'
import Menu from './Headers/Menu'
import Banners from './Body/Banners'
import Product1 from './Products/Product1'
import Product2 from './Products/Product2'
import Banners01 from './Body/Banners01'
import Product3 from './Products/Product3'
import FooterTop from './Footer/FooterTop'
import Footer from './Footer/Footer';

function Index() {
  React.useEffect(() => {
    document.body.classList.add("index-page");
    document.body.classList.add("sidebar-collapse");
    document.documentElement.classList.remove("nav-open");
    window.scrollTo(0, 0);
    document.body.scrollTop = 0;
    return function cleanup() {
      document.body.classList.remove("index-page");
      document.body.classList.remove("sidebar-collapse");
    };
  });
  return (
    <>
      <Header/>
     
      <div className="wrapper">
      <Menu/>
        <div className="main">
        <Banners/>
        <Product1/>
        <Product2/>
        <Banners01/>
        <Product3/>
        </div>
        <FooterTop/>
        <Footer/>
      </div>
    </>
  );
}

export default Index;

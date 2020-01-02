import React from "react";

import Header from '../Headers/Header'
import Menu from '../Headers/Menu'




import FooterTop from '../Footer/FooterTop'
import Footer from '../Footer/Footer';
import Body_Laptopgaming01 from "./Body_Laptopgaming01";
import Body_Laptopgaming02 from "./Body_Laptopgaming02";

function Laptopgaming() {
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
    <div>
      <Header/>
     
      
      <Menu/>
        
        <Body_Laptopgaming01/>
        <Body_Laptopgaming02/>
        
        <FooterTop/>
        <Footer/>
      </div>
    
  );
}

export default Laptopgaming;

import React,{Component} from 'react'


class Banners extends Component {
    render() {
        return(
            <div className="mainbanner">
        <div id="main-banner" className="owl-carousel home-slider">
          <div className="item"> <a href="index.html"><img
                          alt="..."
                          className="img-raised"
                          src={require("../image/banners/07_Sep35af28d3770b8292b53a00e6468599ab.jpg")}
                        ></img></a> </div>
          <div className="item"> <a href="index.html"><img src="../image/banners/07_Sep35af28d3770b8292b53a00e6468599ab.jpg" style={{height: '100%'}} width="100%" alt="main-banner2" className="img-responsive" /></a> </div>
          <div className="item"> <a href="index.html"><img src="../image/banners/09_Sep19ae7763cd670097dbc41a22b7827781.jpg" alt="main-banner3" className="img-responsive" /></a> </div>
        </div>
      </div>
        );
    }
}

export default Banners

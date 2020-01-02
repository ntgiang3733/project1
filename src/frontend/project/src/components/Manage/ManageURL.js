import React,{Component} from 'react'
import { Route} from "react-router-dom";
import Index from '../Index'
import Login from '../Login/Login'
import Checkout from '../Checkout/Checkout'
import Register from '../Register/Register';
import Forgetpassword from '../Forgetpassword/Forgetpassword'
import Cart from '../cart/Cart';
import Laptopgaming from '../LaptopGaming/Laptopgaming';
class ManageURL extends Component{
        render(){
                return(
                        <div>
                           <Route exact path="/" component={Index}/>
                           <Route path="/Laptopgaming" component={Laptopgaming}/>
                           <Route path="/dang-nhap" component={Login}/>
                           <Route path="/dang-ky" component={Register} />
                           <Route path="/quen-mat-khau" component={Forgetpassword}/>
                           <Route path="/gio-hang" component={Cart}/>
                           <Route path="/thanh-toan" component={Checkout}/>
                        </div>
                    
                );
        }

 }

 export default ManageURL;
import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';


import {
    Collapse,
    Navbar,
    NavbarToggler,
    NavbarBrand,
    Nav,
    NavItem,
    NavLink,
    UncontrolledDropdown,
    DropdownToggle,
    DropdownMenu,
    DropdownItem } from 'reactstrap';

const ilside = {
  float: 'rigth',
  display: 'inline-block',
  margin:  '20px',
  fontSize: '20px',
  

}
    
class Main extends React.Component {
    render (){
        return(
            <React.Fragment>
            <div>
                <div className="intro-header">
                
                    <div className="container">
                    
                        <div className="row">
                            <div className="col-lg-12">
                                <div className="intro-message">
                                <h3>Contrate ou ofereça serviços</h3>
                                    <ul>
                                        <li style={ilside}><a href="/#foo" className="btn btn-default btn-lg"> <span style={{backgroundColor: 'yellow', fontSize: 1.35 + "em"}} className="network-name text-black">OFERECER SERVIÇO</span></a>
                                        </li>
                                        <li style={ilside}><a href="/#foo" className="btn btn-default btn-lg"> <span style={{backgroundColor: 'yellow',fontSize: 1.35 + "em"}} className="network-name text-black">CONTRATAR SERVIÇO</span></a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </React.Fragment>
        )
    }
}
    
export default Main
import React from 'react'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';

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
                                 <h2 style={{color: 'white'}}>Contrate ou ofereça serviços</h2>
                                    <ul>
                                        <li style={ilside}><a href="/#foo" className="btn btn-default btn-lg"> <span style={{backgroundColor: 'yellow', fontSize: 1.55 + "em"}} className="network-name text-black">OFERECER SERVIÇO</span></a>
                                        </li>
                                        <li style={ilside}><a href="/#foo" className="btn btn-default btn-lg"> <span style={{backgroundColor: 'yellow',fontSize: 1.55 + "em"}} className="network-name text-black">CONTRATAR SERVIÇO</span></a>
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
import React from 'react'
import '../src/landing-page.css'
import '../src/ajax-uploader.css'
import '../src/apps-gray.css'
import '../src/slick-theme.css'
import '../src/main.css'


import 'bootstrap/dist/css/bootstrap.min.css';
class Footer extends React.Component {
 
 render() {
   return (
    <React.Fragment>
        <div style={{backgroundColor: 'gray',height: '245px', marginTop:'5px', padding: '20px'}}>
        
          <div>
  <div style={{float: 'left', width: 400}}><ul className="faca-parte">
        <h3 className="titulo-footer">Institucional</h3>
                <li> <a href="como-funciona-p24.html" style={{color: 'white'}}>Como Funciona</a> </li>
                <li> <a href="termos-de-uso-p25.html" style={{color: 'white'}}>Termos de Uso</a> </li>
                <li> <a href="sobre-nos-p27.html" style={{color: 'white'}}>Sobre nós</a> </li>
                <li> <a href="contact.html" style={{color: 'white'}}>
          Contato          </a> </li>
              </ul></div>
  <div style={{float: 'left', width: 400}}><ul className="institucional">
        <h3 classNme="titulo-footer">Faça Parte</h3>
                        <li> <a href="user/login.html" style={{color: 'white'}}>
          Entrar          </a></li>
                <li> <a href="user/register.html" style={{color: 'white'}}>
          Registrar uma conta gratuita          </a> </li>
                                </ul></div>
  <div style={{float: 'left', width: 400}}><ul className="social-net">
  <h3 className="titulo-footer">Redes Sociais</h3>
  <a href="http://www.facebook.com/"><img src="oc-content/themes/osclasswizards/images/facebook-logo.png" /></a>
  <a href="http://www.instagram.com/"><img src="oc-content/themes/osclasswizards/images/instagram-logo.png" /></a>
</ul>
</div>
  <br style={{clear: 'left'}} />
</div>

<div className="copyright" style={{float:'right', marginRight: '1%'}}>
  <div className="left-foot"><img src="oc-content/themes/osclasswizards/images/logowhite.png" /></div>
  <div className="middle-foot"><p style={{color: 'white',float:'left'}}>© 2018 HSDX - Todos os direitos reservados</p></div>
</div>
           
 </div>
        
        

       
     </React.Fragment>
   )
 }
}
export default Footer

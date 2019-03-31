import React from 'react'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';


    
class Contato extends React.Component{

    constructor(props) {
        super(props);
        this.state = {nome: '',phone: '',password:''};
    
        this.handleChangeNome = this.handleChangeNome.bind(this);
        this.handleChangePhone = this.handleChangePhone.bind(this);
        this.handleChangePassword = this.handleChangePassword.bind(this);

        this.handleSubmit = this.handleSubmit.bind(this);
      }
    
      handleChangeNome(event) {
        this.setState({nome: event.target.value});
      }

      handleChangePhone(event) {
        this.setState({phone: event.target.value});
      }

      handleChangePassword(event) {
        this.setState({password: event.target.value});
      }

    handleSubmit(event) {
        alert('A name was submitted: ' + this.state.nome+this.state.phone+this.state.password);
        
      }

    render(){
        return (
           <React.Fragment>
            <div style={{height: '375px', marginTop:'5px'}}>
              <form onSubmit={this.handleSubmit}>
                    <label>
                     Nome:
                     <input value={this.state.nome} onChange={this.handleChangeNome} type="text" name="name" />
                    </label>
                    <label>
                     Telefone Waths App:
                     <input  value={this.state.phone} onChange={this.handleChangePhone} type="text" name="phone" />
                    </label>
                    <label>
                     Senha
                     <input value={this.state.password} onChange={this.handleChangePassword} type="text" name="senha" />
                    </label>
                     <input type="submit" value="Cadastrar" />
              </form>
            </div>
         
           </React.Fragment>
        )
    }
}   


 export default Contato
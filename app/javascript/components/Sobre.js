import React from 'react'
import '../src/landing-page.css'
import 'bootstrap/dist/css/bootstrap.min.css';


    
class Sobre extends React.Component{

    constructor(props) {
        super(props);
        this.state = {date: new Date()};
      }
      componentDidMount() {
        this.timerID = setInterval(
          () => this.tick(),
          1000
        );
      }
    
      componentWillUnmount() {
        clearInterval(this.timerID);
      }
    
      tick() {
        this.setState({
          date: new Date()
        });
      }

    render(){
        return (
           <React.Fragment>
            <div style={{height: '375px', marginTop:'5px'}}>
             <h1>Pagina Sobre</h1>
            </div>
            <h2>It is {this.state.date.toLocaleTimeString()}</h2>
           </React.Fragment>
        )
    }
}   


 export default Sobre
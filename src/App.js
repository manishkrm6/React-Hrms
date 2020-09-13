import React, {Component} from 'react';
import './App.css';
import styled from 'styled-components';
import Person from './Person/Person';

const StyledButton = styled.button`
    
    background-color: ${ props => props.alt ? 'red': 'green' };
    color:white;
    font: inherit;
    border: 1px solid blue;
    padding: 8px;
    cursor: pointer;
    &:hover {
      background-color: ${ props => props.alt ? 'salmon' : 'lightgreen'};
      color:black;
    } 
   `;

class App extends Component{
  
  state  = {
    persons: [
      { id: 'idMan', name:"Manish", age:"30" },{ id: 'idArad', name:"Aradhana", age:"28" },{ id: 'idPall', name:"Pallavi", age:"14" }
    ],
    otherState: 'Some Other value',
    showPerson: false    
  }
  
  nameChangedHandler = (event, id) => {
    
    const personIndex = this.state.persons.findIndex( p => { 
      return p.id === id;
    })

    const person = {
      ...this.state.persons[personIndex]
    };
    
    // const person =  Object.assign({},this.state.persons[personIndex])
    person.name = event.target.value;
    const persons = [...this.state.persons];
    persons[personIndex] = person;
    this.setState({persons:persons});

  }

  togglePersonHandler = () => {
      const doesShow = this.state.showPerson;
      this.setState({showPerson:!doesShow})
  }

  deletePersonHandler = (personIndex) => {
    
    const persons = this.state.persons.slice();
    persons.splice(personIndex,1);
    this.setState({persons : persons})

  }


  render(){
    
    const style = {
      backgroundColor: 'green',
      color:'white',
      font: 'inherit',
      border: '1px solid blue',
      padding: '8px',
      cursor: 'Pointer',
      ':hover': {
        backgroundColor:'lightgreen',
        color:'black'
      } 

    };
    
    let persons = null;

    if(this.state.showPerson){
      persons = ( <div>
            
            {
              this.state.persons.map( (person, index) => {
                return (<Person 
                  click={ () => this.deletePersonHandler(index) }
                  name={person.name} 
                  age = {person.age} 
                  key = {person.id}
                  changed = { (event) => this.nameChangedHandler(event, person.id)}
                  />  )
                
              })
            }
        </div> 
        )
        
        /* style.backgroundColor = 'red';
        style[':hover'] = {
          backgroundColor: 'salmon',
          color: 'black'
        }; */

    }

    const classes = [];

    if( this.state.persons.length <= 2){
      classes.push('red'); // classes = ['red']
    }
    if(this.state.persons.length <= 1){
      classes.push('bold'); // classes = ['red','bold']
    }

    return (

      <div className="App">
        <h1>Hi, I am react app developer</h1>
        <p className={classes.join(' ')}> This is really working.</p>
      
        <StyledButton
        alt = {this.state.showPerson} onClick={this.togglePersonHandler}>Toggle Persons
        </StyledButton>
        

        {persons}
      </div>

    ) 

  }

} // End Class


export default App;

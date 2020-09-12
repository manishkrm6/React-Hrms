import React, {Component} from 'react';
import './App.css';
import Radium, { StyleRoot } from 'radium';
import Person from './Person/Person';

class App extends Component{
  
  state  = {
    persons: [
      { id: 'idMan', name:"Manish", age:"30" },{ id: 'idArad', name:"Aradhana", age:"28" },{ id: 'idPall', name:"Pallavi", age:"14" }
    ],
    otherState: 'Some Other value',
    showPerson: false    
  }
  
  switchNameHandler = (newName) => {     
    
    this.setState({
      persons:[ {name:newName, age:32},{name:"Pallu Mishra",age:15},{name:"Rupam Mishra",age:35}
      ]
    })
    
    //console.log('Was Clicked');
    //this.state.persons[0].name="Manish Kumar Mishra";
    //this.state.persons[0].age="32";

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

    /* this.setState({
      persons:[ {name:"Jay Mangal Mishra", age:65},{name:event.target.value,age:60},{name:"Archana Thakur",age:37}
      ]      
    }) */   

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
            
            

            {/*<Person
            name={this.state.persons[0].name} 
            age={this.state.persons[0].age} />

            <Person 
            name={this.state.persons[1].name} 
            age={this.state.persons[1].age}
            changed={this.nameChangedHandler}
            />

            <Person 
            name={this.state.persons[2].name} 
            age={this.state.persons[2].age}
            click={this.switchNameHandler.bind(this,'R Kumari')}
            >
            My Hobbies: Doing Yoga</Person>*/}

        </div> 
        )
        
        style.backgroundColor = 'red';
        style[':hover'] = {
          backgroundColor: 'salmon',
          color:'black'
        };
    }

    //let classes = ['red','bold'].join(' ');
    const classes = [];

    if( this.state.persons.length <= 2){
      classes.push('red'); // classes = ['red']
    }
    if(this.state.persons.length <= 1){
      classes.push('bold'); // classes = ['red','bold']
    }



    
    return (
      
      <StyleRoot>
      <div className="App">
        <h1>Hi, I am react app developer</h1>
        <p className={classes.join(' ')}> This is really working.</p>

        <button style={style} onClick={this.togglePersonHandler}>Toggle Persons</button>

        {/*<button style={style} onClick={this.switchNameHandler.bind(this,'Vicky Mishra')}>Switch Name</button> */}

        {/*<button onClick={ () => { this.switchNameHandler('Vicky Mishra') } }>Switch Name</button>*/}

        {persons}

      </div>
      </StyleRoot>

    ) 

    //return React.createElement('div',{className:"App"},React.createElement('h1',null,'Hi I\'m react app'))
  }

} // End Class


export default Radium(App);

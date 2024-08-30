import logo from './logo.svg';
import './App.css';
import Name from './component/Name/Name';
import Section from './component/Section/Section';
import Description from './component/Description/Description';

function App() {
  const userInformation = {
    firstName: "Reimon Paris",
    lastName: "Dionisio ",
    section: "BSIT-3C",
    description: "pogi"
  }
  return (
    <div className="App">
      <Name firstName={userInformation.firstName} lastName={userInformation.lastName}/>
      <Section section={userInformation.section}/>
      <Description description={userInformation.description}/>
    </div>
  );
}

export default App;

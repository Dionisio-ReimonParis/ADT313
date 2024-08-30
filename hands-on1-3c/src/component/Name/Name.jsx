import './Name.css';
function Name({firstName, lastName}) {
    return (
        <div>
            <h1 className='text-gray'>
                {firstName} <span>{lastName}</span></h1>
        </div>
    )
    
}

export default Name;
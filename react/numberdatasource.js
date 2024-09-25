//#pragma: global
    let datasource[[id]] = new class {
    #listeners
    #value;
    constructor(initialvalue){  
        this.#listeners = []
        this.#value = initialvalue;
    }

    refresh(v){ this.#value = this.#value+1; this.notifyListeners(); }
    setValue(v){ this.#value = v; this.notifyListeners(); }
    getValue() { return this.#value }
    
    addListener(l){
        this.#listeners.push(l)
    }
    notifyListeners(){
        this.#listeners.forEach(l => {
            // console.log("l", l); 
            l(this.#value);
        })
    }
}(1);

//#pragma: setup
 datasource[[id]].addListener(() => this.setState({}))
    
//#pragma: global
    let datasource[[id]] = new class {
    #listeners
    #value;
    #filtered;
    #selected;
    constructor(initialvalue){  
        this.#listeners = []
        this.#value = initialvalue;
        this.#filtered = initialvalue;
        this.#selected = initialvalue[0];
    }

    add(v){ this.#value.push({title:v, subtitle:v});this.notifyListeners();}
    refresh(v){ this.#value.push(v);this.notifyListeners();}
    setValue(v){ this.#value = v; this.notifyListeners(); }
    getValue() { return this.#selected }
    getList() { return this.#filtered }
    select(f) { this.#selected = f;  this.notifyListeners()}
    search(f) { if (!f) this.#filtered = this.#value; else this.#filtered = this.#value.filter(e => e.title.indexOf(f)  > -1); this.notifyListeners()}
    
    addListener(l){
        this.#listeners.push(l)
    }
    notifyListeners(){
        // console.log("number of listeners:", this.#listeners.length)
        this.#listeners.forEach(l => {
            l(this.#value);
        })
    }
}([
    {title:"john1", subtitle:"gorter"},
    {title:"john2", subtitle:"gorter"},
    {title:"john3", subtitle:"gorter"},
    {title:"john4", subtitle:"gorter"},
    {title:"john5", subtitle:"gorter"},
    {title:"john6", subtitle:"gorter"},
    {title:"john7", subtitle:"gorter"},
]);


//#pragma: setup
datasource[[id]].addListener(() => this.setState({}))

//
// definição de variavel / variavel /tipo da variavel
//              var         i       :   int
//              var         b       :   String
//
// Definição em blocos
//  Em orientação a objetos em switft, para instanciarmos uma classe, adicionamos '.' nome
// da classe

// Argumentos em swift são labels
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        }
        
        .padding(.horizontal)
        .foregroundColor(.red)
        
    }
}

struct CardView: View {
    
    @State var isFaceUp : Bool = true //Se torna um ponteiro de boolean
    
    var body: some View{
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp{
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text("✈️").font(.largeTitle)
            }else {
                shape.fill()
            }
            
            
        }
        .onTapGesture{
            isFaceUp = !isFaceUp
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}

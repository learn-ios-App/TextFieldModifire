
import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var age = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            VStack {
                //一つ目
                TextField("名前", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 150, height: 25)
                .padding()
                //二つ目
                TextField("", text: $age)
                    .frame(width: 150, height: 25)
                    .border(Color.gray, width: 1)
                    .padding()
            }
            
            VStack {
                Form {
                    TextField(text: $name, prompt: Text("Required")) {
                        Text("UserName")
                    }
                    SecureField(text: $password, prompt: Text("Required")) {
                        Text("Password")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

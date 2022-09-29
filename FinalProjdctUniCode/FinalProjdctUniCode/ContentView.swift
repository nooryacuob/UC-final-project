//
//  ContentView.swift
//  FinalProjdctUniCode
//
//  Created by Nour Alhashash on 29/09/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State  var Price : String = ""
    @State  var Name : String = ""
  
    var body: some View {
        
        
        NavigationView{
            
            
            VStack {
                
                Text("مرحبا بك في خطة الإدخار")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.green)
                Image("money-g8e804bb66_1920")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Rectangle())
                
                Text("ماهو هدفك؟")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.green)
                TextField("اسم الهدف", text: $Name )
                
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                TextField("ادخل سعره هنا... ", text: $Price )
                
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                // Text("احسب")
                //    .frame(width: 150, height:50)
                //   .background(Color.green)
                //   .clipShape(RoundedRectangle(cornerRadius: 50))
                
                NavigationLink(destination: Calculater(),label: { Text("احسب")
                        .frame(width: 150, height:50)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                })
                
                
                
            }
        }
    }
}
//
//
//
struct Calculater: View {
    @State var Spends  = ["الراتب والأرباح", "أعمال خير", "البيت","خدمات","صحة","أخرى.."]
    @State  var MySpends : String = ""
    @State  var Money : String = ""
   // @State  var Savings : String = ""
   // @State  var result : String = ""
    var body: some View {
        VStack{
            Text("أدخل معلوماتك:")
                .font(.largeTitle)
                .bold()
            
            
            List(Spends, id: \.self){Spend in
                
                HStack{
                
                    //TextField(" السعر", text: $MySpends )
                    Spacer()
                    Text(Spend)
                }
                
                
            }
            TextField("ادخل معاشك وأرباحك الكلية", text: $Money )
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
                .background(Color.green)
            
            TextField("ادخل مصروفاتك الكلية للشهر", text: $MySpends )
                .font(.system(size: 25))
                .multilineTextAlignment(.center)
                .background(Color.red)
            
            
            
            
            
            
            if Double (Money) ?? 0 > Double(MySpends) ?? 0{
                
                
                NavigationLink(destination: Result(),label: { Text("النتيجة")
                        .frame(width: 150, height:50)
                        .background(Color.green)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
            
               
                    
                })
                
            }
        }
    }
    
    //
    //
    //
    //
    
    
    struct Result: View {
      
       @State  var result : String = ""
        @State  var Savings : String = ""
        
        var body: some View {
            VStack {
                
                Text("خطة الإدخار تخبرك خلال الأشهر هذه ستصل إلى هدفك")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.green)
                    .multilineTextAlignment(.center)
                
                Image("money-g8e804bb66_1920")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Rectangle())
               
              //  ContentView(name: " ", Price: String: $result)
        //Double (Savings) = (Double (Money) ?? 0) - (Double (MySpends) ?? 0)
                         //}
                     //    Money-MySpends= Savings
                         
                      //   result = Price/Savings
                
                
                
                //    Money-MySpends= Savings
                    
                 //   result = Price/Savings
                
                
                
            }
       
            
            
      
            
        }}
            
            //
            //
            //
            //
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

// .onTapGesture {
     
     
//       if Double (Money) ?? 0 >= MySpends{
//           result="ممتاز"
//      }
     
//      else if Double (Money) ?? 0 <= MySpends{
//           result="أنت في خطر، يجب أن تحسن دخلك، وتقلل مصروفاتك"
//         }
     
//         else if Double (Money) ?? 0 = MySpends{
//             result="تحتاج إلى تقليل مصروفاتك، لتدخر قليلاً"
         
//         }

//  }

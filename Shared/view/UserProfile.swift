//
//  UserProfile.swift
//  cooking (iOS)
//
//  Created by Little Weak_duck on 2022/4/20.
//

import SwiftUI
import UIKit
import SwiftyJSON

struct UserProfile: View {
    @State private var nickName :String=""
    @State private var birthday:String=""
    @State private var gender:Int=0
    @State private var isShowPhotoLibrary = false
    @State private var image=UIImage()
    
    
    
    var bindingDate : Binding<Date>
    {
        Binding<Date>(
            get: {
                Date()
            }, set: {
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyyMMdd"
                birthday = formatter.string(from: $0)
            })
    }
    
    @ObservedObject var viewModel: ContentViewModelView
    
    var body: some View {
        VStack {
            Image(uiImage: self.image)
                .resizable()
                .frame(width: 175, height: 175)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 3)
            HStack {
                Text("用户名：")
                    .font(.title2)
                TextField("用户名", text: $nickName)
                    .frame(width: 100,height: 26)
                    .font(.title2)
                
            }
            HStack {
                Text("生日：")
                    .font(.title2)
                DatePicker(selection: bindingDate,in:...Date(), displayedComponents: .date, label: {Text("生日：")}
                )
                .labelsHidden()
                .frame(width: 100,height: 26)
                
            }
            HStack{
                Text("性别：")
                    .font(.title2)
                Picker(selection: $gender, label: Text("性别")) {
                    Text("男").tag(1)
                    Text("女").tag(2)
                    Text("保密").tag(0)
                }
                .labelsHidden()
                .frame(width: 100,height: 26)
                .pickerStyle(MenuPickerStyle())
            }
            HStack {
                
                Button("选择头像") {
                    self.isShowPhotoLibrary=true
                }
                
                Button("确认修改") {
                    Api.updateUserInfo(birthday: birthday, gender: gender, nickName: nickName).responseString{response in
                        let json1 = JSON(parseJSON: response.value ?? "")
                        if json1["code"].intValue == 200 {
                            viewModel.isSignUp = true
                        }
                        else{
                            viewModel.isSignUp = false
                        }
                    }
                    let imageData = self.image.jpegData(compressionQuality: 0.8)
                    let fullPath=NSHomeDirectory().appending("/temp/avatar.jpeg")
                    
                    let userAvatarURL=URL(fileURLWithPath: fullPath)
                    do{
                        if FileManager.default.fileExists(atPath: fullPath) {
                            try FileManager.default.removeItem(at: userAvatarURL)
                        }
                        
                        
                        FileManager.default.createFile(atPath: fullPath, contents: imageData)
                    }catch {
                        print(error.localizedDescription)
                    }
                    print("传图片")
                    
                    Api.uploadUserAvatar(userAvatarURL: userAvatarURL).responseString{response in
                        let json2 = JSON(parseJSON: response.value ?? "")
                        if json2["code"].intValue == 200 && viewModel.isSignUp{
                            viewModel.isSignUp = true
                        }
                        else{
                            viewModel.isSignUp = false
                        }
                    }
                    
                }
            }
            
        }
        .sheet(isPresented: $isShowPhotoLibrary){
            ImagePicker(selectedImage: self.$image)
        }
    }
}

//struct UserProfile_Previews: PreviewProvider {
//    static var previews: some View {
//        UserProfile()
//    }
//}








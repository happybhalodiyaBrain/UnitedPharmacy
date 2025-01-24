import SwiftUI

struct ContactInformationView: View {
    var body: some View {
        VStack{
            // MARK: - Background Image Section
            ZStack{
                // Background image for the contact information section.
                Image(ContactUsImages.img_contactUsBG.rawValue)
                    .frame(width: .infinity, height: 336)
                VStack(spacing:4){
                    // Title and working hours text.
                    VStack{
                        Text(Contactus.contactInformation)
                            .textStyle(size: 16, color: Color(UIColor.appclrFFFFFF),
                                       fontName: FontConstant.Almarai_Bold)
                           
                        Text(Contactus.workinghours)
                            .textStyle(size: 16, color: Color(UIColor.appclrFFFFFF),
                                       fontName: FontConstant.Almarai_Regular)
                            .multilineTextAlignment(.center)
                    }.padding(.top, 16)
                    // MARK: - Location Section
                    VStack(spacing:4){
                        Image(ContactUsImages.img_locationPin.rawValue)
                            .frame(width: 24, height: 24)
                        Text(Contactus.location)
                            .textStyle(size: 14, color: Color(UIColor.appclrFFFFFF),
                                       fontName: FontConstant.Almarai_Bold)
                            .multilineTextAlignment(.center)
                            .padding(.top, 6)
                    }.padding(.top, 32)
                    // MARK: - Email Section

                    VStack(spacing:4){
                        Image(ContactUsImages.img_email.rawValue)
                            .frame(width: 24, height: 24)
                        Text(Contactus.email)
                            .textStyle(size: 16, color: Color(UIColor.appclrFFFFFF),
                                       fontName: FontConstant.Almarai_Bold)
                            .multilineTextAlignment(.center)
                            .padding(.top, 6)
                    }.padding(.top, 24)
                    // MARK: - Phone Section

                    VStack(spacing:4){
                        Image(ContactUsImages.img_phonecall.rawValue)
                            .frame(width: 24, height: 24)
                        Text(Contactus.phoneNo)
                            .textStyle(size: 16, color: Color(UIColor.appclrFFFFFF),
                                       fontName: FontConstant.Almarai_Bold)
                            .multilineTextAlignment(.center)
                            .padding(.top, 6)
                    }.padding(.top, 24)
                }.padding(.horizontal, 32)
                    .padding(.vertical,16)
                
            }.padding(.horizontal, 16)
            Spacer()
        }
    }
}

#Preview {
    ContactInformationView()
}

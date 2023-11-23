import SwiftUI

struct NearDoctorInfo: Identifiable {
    var id = UUID()
    
    let image: String
    let name: String
    let speciality: String
    let location: String
    let grade: String
    let beginWork: String
}

struct NearDoctors: View {
    let doctors = [NearDoctorInfo(image: AssetImage.nearDoctor1,
                    name: LocalizedStrings.nearName1,
                    speciality: LocalizedStrings.nearPost1,
                    location: LocalizedStrings.nearLoc1,
                    grade: LocalizedStrings.nearRat1,
                    beginWork: LocalizedStrings.nearTime1),
                NearDoctorInfo(image: AssetImage.nearDoctor2,
                    name: LocalizedStrings.nearName2,
                    speciality: LocalizedStrings.nearPost2,
                    location: LocalizedStrings.nearLoc2,
                    grade: LocalizedStrings.nearRat2,
                    beginWork: LocalizedStrings.nearTime2)]

    var body: some View {
        VStack(alignment: .leading, spacing: SpacingSize.large) {
            HStack() {
                Text(LocalizedStrings.nearDoctor)
                  .font(
                        Font.custom(FontNames.poppins, size: FontSizes.medium)
                          .weight(.semibold)
                  )
                .foregroundColor(AssetColor.nameTextColor)

            }
            .padding(SpacingSize.without)
            
            ForEach(doctors) { doctor in
                VStack(alignment: .leading, spacing: SpacingSize.medium) {
                VStack(alignment: .center, spacing: SpacingSize.big) {
                    HStack(alignment: .center) {
                          HStack(alignment: .top, spacing: SpacingSize.sm) {
                              ZStack {

                                        Rectangle()
                                          .foregroundColor(.clear)
                                          .frame(width: Sizes.bigAvatarSize, height: Sizes.bigAvatarSize)
                                          .background(
                                            Image(doctor.image)
                                                  .resizable()
                                                  .aspectRatio(contentMode: .fill)
                                                  .frame(width: Sizes.bigAvatarSize, height: Sizes.bigAvatarSize)
                                                  .clipped()
                                                  .background(.white)
                                                  .clipShape(Circle())
                                          )

                                }.frame(width: Sizes.bigAvatarSize, height: Sizes.bigAvatarSize)

                            VStack(alignment: .leading, spacing: SpacingSize.sm) {
                                Text(doctor.name)
                                  .font(
                                        Font.custom(FontNames.poppins, size: FontSizes.medium)
                                          .weight(.bold)
                                  )
                                  .foregroundColor(AssetColor.nameTextColor)

                                Text(doctor.speciality)
                                    .font(Font.custom(FontNames.poppins, size: FontSizes.small))
                                  .foregroundColor(AssetColor.kindGrayColor)
                            }
                            .padding(SpacingSize.without)
                        }
                        .padding(SpacingSize.without)

                          Spacer()
                          HStack(alignment: .center, spacing: SpacingSize.small) {
                              AssetImage.nearLoc
                            .frame(width: Sizes.iconSize, height: Sizes.iconSize)

                            Text(doctor.location)
                              .font(Font.custom(FontNames.poppins, size: FontSizes.small))
                              .foregroundColor(AssetColor.kindGrayColor)
                        }
                        .padding(SpacingSize.without)
                    }
                    .padding(SpacingSize.without)
                    .frame(width: Sizes.shadowSize, alignment: .center)

                    Divider()
                    .frame(minHeight: Sizes.without, maxHeight: Sizes.without)
                    .overlay(Rectangle()
                        .stroke(.white.opacity(Sizes.customFloat), lineWidth: Sizes.linewidth)
                )
                .background(AssetColor.kindWhiteColor)


                HStack(alignment: .top, spacing: SpacingSize.medium) {
                    HStack(alignment: .center, spacing: SpacingSize.verysmall) {
                        AssetImage.nearClock1
                        .frame(width: Sizes.smallAvatarSize, height: Sizes.smallAvatarSize)
                        .foregroundColor(AssetColor.kindOrangeColor)
                        
                        Text(doctor.grade)
                          .font(Font.custom(FontNames.poppins, size: FontSizes.verysmall))
                          .foregroundColor(AssetColor.kindOrangeColor)
                    }
                    .padding(SpacingSize.without)

                    HStack(alignment: .center, spacing: SpacingSize.verysmall) {
                        AssetImage.nearClock2
                        .frame(width: Sizes.smallAvatarSize, height: Sizes.smallAvatarSize)
                        .foregroundColor(AssetColor.kindBlueColor)
                        
                        Text(doctor.beginWork)
                          .font(Font.custom(FontNames.poppins, size: FontSizes.verysmall))
                          .foregroundColor(AssetColor.kindBlueColor)
                    }
                    .padding(SpacingSize.without)
                    .frame(maxWidth: .infinity, alignment: .center)
                }
                .padding(SpacingSize.without)
                .frame(alignment: .topLeading)
            }
            .padding(.horizontal, SpacingSize.large)
            .padding(.vertical, SpacingSize.big)
            .background(.white)
            .cornerRadius(Radius.medium)
            .shadow(color: AssetColor.shadowColor
            .opacity(Sizes.customFloat2), radius: Radius.small, x: Sizes.customX, y: Sizes.customY)
            }
            .padding(SpacingSize.without)
        }
    }
    .padding(SpacingSize.without)
    .frame(width: Sizes.headerSize)
}
}

struct NearDoctors_Previews: PreviewProvider {
    static var previews: some View {
        NearDoctors()
    }
}

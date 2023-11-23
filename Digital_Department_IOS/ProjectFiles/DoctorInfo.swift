import SwiftUI

struct DoctorInfo: View {
    var body: some View {
        VStack(alignment: .center, spacing: SpacingSize.large) {
            HStack(alignment: .center) {
                  HStack(alignment: .center, spacing: SpacingSize.medium) {
                          
                    ZStack {

                              Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: Sizes.bigAvatarSize, height: Sizes.bigAvatarSize)
                                .background(
                                    AssetImage.mainDoctor
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: Sizes.bigAvatarSize, height: Sizes.bigAvatarSize)
                                        .clipped()
                                        .background(.white)
                                        .clipShape(Circle())
                                )

                      }.frame(width: Sizes.bigAvatarSize, height: Sizes.bigAvatarSize)
            
                    VStack(alignment: .leading, spacing: SpacingSize.small) {
                        Text(LocalizedStrings.maindoctorName)
                      .font(
                            Font.custom(FontNames.poppins, size: FontSizes.medium)
                              .weight(.bold)
                      )
                      .foregroundColor(.white)

                        Text(LocalizedStrings.maindoctorPost)
                      .font(Font.custom(FontNames.poppins, size: FontSizes.small))
                      .foregroundColor(AssetColor.kindWhiteColor)
                    }
                    .padding(SpacingSize.without)
                }
                .padding(SpacingSize.without)

                  Spacer()
                Button(action: {
                    print("pressed")
                }){
                    HStack(alignment: .center, spacing: SpacingSize.without) {
                        AssetImage.arrow
                            .frame(width: Sizes.avatarSize, height: Sizes.avatarSize)
                    }
                }
                .padding(SpacingSize.without)
                .frame(width: Sizes.avatarSize, height: Sizes.avatarSize, alignment: .center)
            }
            .padding(SpacingSize.without)
            .frame(maxWidth: .infinity, alignment: .center)

            Divider()
            .frame(maxWidth: .infinity, minHeight: Sizes.without, maxHeight: Sizes.without)
            .overlay(
                Rectangle()
                    .stroke(.white.opacity(Sizes.customFloat), lineWidth: Sizes.linewidth)
            )
            .background(AssetColor.kindWhiteColor)

            HStack(alignment: .top, spacing: SpacingSize.medium) {
                HStack(alignment: .center, spacing: SpacingSize.small) {
                    AssetImage.mainCal
                    .frame(width: Sizes.iconSize, height: Sizes.iconSize)

                    Text(LocalizedStrings.maindoctorDate)
                      .font(Font.custom(FontNames.poppins, size: FontSizes.verysmall))
                      .foregroundColor(.white)
                }
                .padding(SpacingSize.without)
                .frame(maxWidth: .infinity, alignment: .leading)

                HStack(alignment: .center, spacing: SpacingSize.small) {
                    AssetImage.mainClock
                    .frame(width: Sizes.iconSize, height: Sizes.iconSize)
                    .foregroundColor(.white)

                    Text(LocalizedStrings.maindoctorTime)
                      .font(Font.custom(FontNames.poppins, size: FontSizes.verysmall))
                      .foregroundColor(.white)
                }
                .padding(SpacingSize.without)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(SpacingSize.without)
            .frame(maxWidth: .infinity, alignment: .topLeading)
        }
        .padding(SpacingSize.big)
        .frame(width: Sizes.headerSize, alignment: .top)
        .background(AssetColor.kindBlueColor)
        .cornerRadius(SpacingSize.medium)
    }
}

struct DoctorInfo_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfo()
    }
}

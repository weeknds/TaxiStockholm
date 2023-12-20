//
//  ContentView.swift
//  Taxi Stockholm City
//
//  Created by Cizan Raza on 2023-12-20.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    let cityNumbers = [
        "112": "Gamla Stan",
        "113": "Gamla Stan",
        "114": "Gamla Stan",
        "115": "Gamla Stan",
        "116": "Gamla Stan",
        "117": "Gamla Stan",
        "118": "Gamla Stan",
        "119": "Gamla Stan",
        "122": "Kungsholmen",
        "123": "Kungsholmen",
        "124": "Kungsholmen",
        "133": "Stadshagen - Essingen",
        "134": "Stadshagen - Essingen",
        "135": "Stadshagen - Essingen",
        "136": "Stadshagen - Essingen",
        "137": "Stadshagen - Essingen",
        "138": "Stadshagen - Essingen",
        "141": "Vasastaden - Norrmalm",
        "142": "Vasastaden - Norrmalm",
        "143": "Vasastaden - Norrmalm",
        "144": "Vasastaden - Norrmalm",
        "145": "Vasastaden - Norrmalm",
        "146": "Vasastaden - Norrmalm",
        "147": "Vasastaden - Norrmalm",
        "148": "Vasastaden - Norrmalm",
        "149": "Vasastaden - Norrmalm",
        "153": "Östermalm",
        "154": "Östermalm",
        "155": "Östermalm",
        "156": "Östermalm",
        "157": "Östermalm",
        "158": "Östermalm",
        "159": "Östermalm",
        "161": "Gärdet - Värtan",
        "162": "Gärdet - Värtan",
        "163": "Gärdet - Värtan",
        "164": "Gärdet - Värtan",
        "165": "Gärdet - Värtan",
        "166": "Gärdet - Värtan",
        "172": "Södermalm Östra",
        "173": "Södermalm Östra",
        "174": "Södermalm Östra",
        "182": "Södermalm Västra",
        "183": "Södermalm Västra",
        "184": "Södermalm Västra",
        "185": "Södermalm Västra",
        "186": "Södermalm Västra",
        "187": "Södermalm Västra",
        "191": "Vasaplatsen",
        "192": "Sticklinge-Näset",
        "196": "Brevik",
        "197": "Elfvik",
        "211": "Drottningholm",
        "212": "Ekerö C-Träkvista",
        "213": "Stenhamra",
        "214": "Färentuna",
        "215": "Nyckelby",
        "216": "Munsö",
        "217": "Adelsö",
        "311": "Traneberg",
        "312": "Alvik-Smedslätten",
        "315": "Brommaplan",
        "316": "Nockeby",
        "318": "Johannesfred",
        "319": "Bromma flyg",
        "321": "Blackeberg",
        "322": "Norra Ängby",
        "325": "Mariehäll-Solvalla",
        "332": "Vällingby",
        "333": "Hässelby Gård",
        "334": "Vinsta-Kälvesta",
        "335": "Hässelby Villastad",
        "341": "Flysta",
        "342": "Bromsten-Spånga",
        "343": "Rinkeby",
        "344": "Lunda-Solhem",
        "345": "Nälsta",
        "346": "Tensta",
        "352": "Barkarby-Skälby",
        "354": "Viksjö",
        "355": "Jakobsberg",
        "359": "Kallhäll-Stäket",
        "360": "Kungsängen",
        "380": "Bro",
        "385": "Bålsta",
        "390": "Enköping",
        "395": "Västerås",
        "396": "Köping",
        "412": "Karolinska",
        "413": "Huvudsta-Solna C",
        "414": "Solna Business Park",
        "418": "Hagalund-Frösunda",
        "425": "Råsunda",
        "426": "Järva Krog",
        "428": "Bergshamra",
        "431": "Lilla Alby-Vreten",
        "432": "Sundbyberg C",
        "436": "Duvbo-Rissne",
        "437": "Hallongbergen-Ursvik",
        "443": "Kista",
        "444": "Helenelund-Edsviken",
        "446": "Husby-Akalla",
        "448": "Sollentuna C-Tureberg",
        "455": "Sjöberg",
        "456": "Häggvik-Norrviken",
        "457": "Edsberg",
        "458": "Rotebro-Bollstanäs",
        "460": "Upplands Väsby",
        "465": "Rosersberg",
        "473": "Arlanda",
        "474": "Remoten",
        "480": "Arlanda Stad",
        "481": "Märsta",
        "485": "Sigtuna",
        "486": "Knivsta Väst",
        "487": "Knivsta Öst",
        "490": "E4 Norrut",
        "511": "Danderyd-Mörby",
        "512": "Stocksund-Ösby",
        "513": "Klingsta-Nora",
        "515": "Djursholm",
        "521": "Enebyberg",
        "524": "Skarpäng-Ensta",
        "526": "Täby Kyrkby",
        "532": "Täby C",
        "534": "Näsby Park-Lahäll",
        "535": "Viggbyholm-Gribbylund",
        "537": "Awning-Rydbo",
        "541": "Vallentuna",
        "542": "Lindholmen",
        "543": "Brottby",
        "551": "Svinninge",
        "552": "Vaxholm-Resarö",
        "553": "Österåker",
        "554": "Åkersberga",
        "555": "Rindö-Skarpö",
        "560": "Rimbo-Kårsta",
        "571": "Ljusterö",
        "572": "Blidö",
        "573": "Yxlan",
        "580": "Norrtälje",
        

        // Add more city-number pairs as needed
    ]

    @Published var resultText = ""

    func findCityByNumber(_ number: String) {
        if let city = cityNumbers[number] {
            resultText = "City: \(city)"
        } else {
            resultText = "Location not found for this number."
        }
    }

    func findNumberByCity(_ city: String) {
        if let number = cityNumbers.first(where: { $0.value.lowercased() == city.lowercased() })?.key {
            resultText = "Number: \(number)"
        } else {
            resultText = "Number not found for this location."
        }
    }
}

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    @State private var inputText = ""

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.gray]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                VStack {
                    Text("Taxi Stockholm: Zoner")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 20)

                    TextField("Enter number or city", text: $inputText, onCommit: {
                        if let number = Int(inputText.trimmingCharacters(in: .whitespacesAndNewlines)) {
                            viewModel.findCityByNumber(String(number))
                        } else {
                            viewModel.findNumberByCity(inputText)
                        }
                    })
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(8)
                        .foregroundColor(.black)
                        .padding(.top, 20)

                    Button(action: {
                        if let number = Int(inputText.trimmingCharacters(in: .whitespacesAndNewlines)) {
                            viewModel.findCityByNumber(String(number))
                        } else {
                            viewModel.findNumberByCity(inputText)
                        }
                    }, label: {
                            Text("Search")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 40)
                                .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(.blue)
                            )
                        })
                        .padding(.top, 20)

                    Text(viewModel.resultText)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.5))
                        .cornerRadius(8)
                        .padding(.top, 20)
                        .opacity(viewModel.resultText.isEmpty ? 0 : 1)
                }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(16)
                    .padding(.horizontal)

                Spacer()
            }
        }
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

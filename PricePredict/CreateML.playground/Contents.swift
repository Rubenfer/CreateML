import CreateML
import Foundation

#warning("Update to your data path")
let url = URL(fileURLWithPath: "./PriceData.json")
let data = try MLDataTable(contentsOf: url)
let (trainingData,testData) = data.randomSplit(by: 0.8, seed: 0)

let model = try MLRegressor(trainingData: data, targetColumn: "price")

#warning("Update to your export path")
try model.write(to: URL(fileURLWithPath: "./PriceData.mlmodel"), metadata: nil)

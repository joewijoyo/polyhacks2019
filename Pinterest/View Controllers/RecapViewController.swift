//
//  RecapViewController.swift
//  Pinterest
//
//  Created by Joe Wijoyo on 1/19/19.
//  Copyright © 2019 Razeware LLC. All rights reserved.
//

import UIKit

class RecapCellData {
  var image: UIImage?
  var title: String
  var description: String
  var urlString: String?
  
  init(image: UIImage?, title: String, description: String, urlString: String?) {
    self.image = image
    self.title = title
    self.description = description
    self.urlString = urlString
  }
  
}

class RecapViewController: UIViewController {
  
    @IBOutlet weak var tableView: UITableView!
    var data: [RecapCellData]!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    do {
      try self.data = [RecapCellData.init(image: UIImage.init(data: Data.init(contentsOf: (URL.init(string: "https://cdn.vox-cdn.com/thumbor/2pd_9FcbQwOx2CFaS1sU5wusKoo=/0x0:4032x2688/920x613/filters:focal(1665x1561:2309x2205):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/62874963/2019_01_19_11_51_48_0500.0.jpg"))!)), title: "The 2019 Women's March battled controversy. These women turned out anyway.", description: "VOX - Jan 19,2019,4:38PM EST", urlString: nil)]
      self.tableView.reloadData()
      
    }
    catch {
      print(error.localizedDescription)
    }
      // Do any additional setup after loading the view.
  }
  

  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      // Get the new view controller using segue.destination.
      // Pass the selected object to the new view controller.
  }
  */

}

extension RecapViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "RecapCell") as! RecapTableViewCell
    let recapCellData = self.data[indexPath.row]
    cell.recapImage.image = recapCellData.image
    cell.titleText.text = recapCellData.title
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 233.0
  }
  
}

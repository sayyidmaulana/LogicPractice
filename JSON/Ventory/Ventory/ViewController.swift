//
//  ViewController.swift
//  Ventory
//
//  Created by Sayyid Maulana Khakul Yakin on 10/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var list: UITableView!
    
    let cellVentory = UINib(nibName: "VentoryCell", bundle: nil)
    let cellVentoryInit = "VentoryInit"
    
    var dataVentory = [VentoryElement]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setData()
        setupView()
        parse(jsonData: Data())
        // Do any additional setup after loading the view.
    }

    private func setupView() {
        
        list.register(cellVentory, forCellReuseIdentifier: cellVentoryInit)
        list.delegate = self
        list.dataSource = self
        list.reloadData()
        
    }
    
    private func parse(jsonData: Data) {
        do {
            let decodedData = try JSONDecoder().decode(VentoryElement.self,
                                                       from: jsonData)
            
            dataVentory = [decodedData]
            list.reloadData()
        } catch {
            print("decode error")
        }
    }
    
    private func setData() {
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataVentory.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellVentoryInit) as? VentoryCell else { return UITableViewCell() }
        
        cell.setData(data: dataVentory[indexPath.row])
        
        return cell
    }
    
}

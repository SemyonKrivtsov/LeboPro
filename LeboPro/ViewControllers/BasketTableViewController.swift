//
//  BasketTableViewController.swift
//  LeboPro
//
//  Created by Nasim Nozirov on 28.04.2023.
//

import UIKit


class BasketTableViewController: UITableViewController {
    
    private let model = Basket.getProduct()
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
////        let height: CGFloat = 100
////
////        let bounds = navigationController?.navigationBar.bounds
////        navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: bounds?.width ?? 0, height: bounds?.height ?? 0 + height)
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.frame.size = UINavigationBar().sizeThatFits(CGSize(width: navigationController?.navigationBar.frame.size.width ?? 0, height: 50))
//        navigationItem.title = "Корзина"
        let label = UILabel()
        label.textColor = .black
        label.text = "Корзина"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: label)
        navigationItem.largeTitleDisplayMode = .always
       
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return model.product.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:  UITableViewCell
        if let reuseCell = tableView.dequeueReusableCell(withIdentifier: "cell") {
            cell = reuseCell
        } else {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        var configuration = cell.defaultContentConfiguration()
        let product = model.product[indexPath.row]
        configuration.text = product
        configuration.textProperties.alignment = .natural
        cell.contentConfiguration = configuration
        return cell
    }
    

}

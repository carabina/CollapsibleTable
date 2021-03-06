//
//  FoodShoppingTableViewDatasourceDelegate.swift
//  CollapsibleTableDemo
//
//  Created by Robert Nash on 09/08/2017.
//  Copyright © 2017 Robert Nash. All rights reserved.
//

import UIKit
import CollapsibleTable

class FoodShoppingTableViewDelegate: CollapsibleTableDelegate<Food>
{
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section: Food = sections[indexPath.section]
        let item: Item = section.rows[indexPath.row]
        if item.isSelected {
            item.isSelected = false
            tableView.deselectRow(at: indexPath, animated: true)
        } else {
            item.isSelected = true
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let section: Food = sections[indexPath.section]
        let item: Item = section.rows[indexPath.row]
        item.isSelected = false
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let section: Food = sections[indexPath.section]
        let item: Item = section.rows[indexPath.row]
        cell.setSelected(item.isSelected, animated: false)
    }
}

//
//  Cus+CoreDataProperties.swift
//  
//
//  Created by Forest on 8/10/17.
//
//

import Foundation
import CoreData
import UIKit


extension Cus {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cus> {
        return NSFetchRequest<Cus>(entityName: "Cus")
    }

    @NSManaged public var cusName: String?
    @NSManaged public var cusCinema: String?
    @NSManaged public var cusMovie: String?
    @NSManaged public var cusDate: String?
    @NSManaged public var cusTime: String?
    @NSManaged public var cusNumTickets: String?
    @NSManaged public var cusType: String?
    @NSManaged public var cusClass: String?
    @NSManaged public var cusSeats: String?
    

}


class Cus {
    static let sharedInstance = Cus()
    private init()
    {
        managedContext = appDelegate.persistentContainer.viewContext
    }
    
    let appDelegate = UIApplication.shared.delegate as! appDelegate
    
    let managedContext: NSManagedObjectContext
    
    var cusDB = [Cus]()
}

func updateDatabase()
{
    do {
        try managedContext.save()
    } catch let error as NSError {
        print("could not save \(error),\(error.userinfo)")
    }
}

func deleteMovie (_indexPath: IndexPath)
{
    let cus = cusDB[indexPath.item]
    cusdb.remove(at: indexPath.item)
    managedContext.delete(cus)
    updateDatabase()
}

private func getCusFromCoreData()
{
    
    do
    {
        let fetchRequest = NSFetchRequest <NSFetchRequestResult> (entityName:"Cus")
        
        let results = try managedContext.fetch(fetchRequest)
        cusdb = results as! [NSManagedObject]
    }
    
    catch let error as NSError {
        print ("Could not fetch \(error), \(error.userinfo)")
    }
}

func saveMovie (cusName: String, cusCinema: String, cusMovie: String, cusDate: String, cusTime: String, cusNumTickets: String, cusType: String, cusClass: String, cusSeats: String, existing: Cus?)
{
    let entity = NSEntityDescription .entity(forEntityName: "Cus" , in: managedContext)!
    
    
    if let _ = existing
    {
        existing!.cusName = cus_name
        existing!.cusCinema = cus_Cinema
        existing!.cusMovie = cus_Movie
        existing!.cusDate = cus_Date
        existing!.cusTime = cus_Time
        existing!.cusNumTickets = cus_NumTickets
        existing!.cusType = cus_Type
        existing!.cusClass = cus_Class
        existing!.cusSeats = cus_Seats
    }
    

    else
    {
        
        let cus = NSManagedObject (entity: entity, insetInto: managedContext)
        
        cus.setValue(cus_Name, forKeyPath: "cusName")
        cus.setValue(cus_Cinema, forKeyPath: "cusName")
        cus.setValue(cus_Movie, forKeyPath: "cusMovie")
        cus.setValue(cus_Date, forKeyPath: "cusDate")
        cus.setValue(cus_Time, forKeyPath: "cusTime")
        cus.setValue(cus_NumTickets, forKeyPath: "cusNumTickets")
        cus.setValue(cus_Type, forKeyPath: "cusType")
        cus.setValue(cus_Class, forKeyPath: "cusClass")
        cus.setValue(cus_Seats, forKeyPath: "cusSeats")
        cusdb.append(cus)
        
    }
    updateDatabase()
}


func getCus (_indexPath: IndexPath) -> Cus
{
    return [indexPath.row] as! Cus
}


override func viewWillAppear (_ animated: Bool) {
    self.tableView.reloadData()
}

override func prepare (for segue: UIStoryboardSegue, sender: Any?)
{
    let detailsVC: DetailViewController! = segue.destination as! DetailViewController
    
    if segue.identifier == "update"
    {
        if let selectedRowIndexPath = tableView.indexPathForSelectedRow
        {
            let cus = self.model.cusdb[selectedRowIndexPath.row]
        detailsVC.currentCus = cus as? Cus
        }
    }
}

override func tableView (_ tableView: UITableVoew, canEditRowAt indexPath: IndexPath) -> Bool
{
    return true
}

override func tableView(_ tableView: UITableVoew, commit editingStyle: UITableViewCellEditingStyle , forRowAt indexPath: IndexPath) {
    model.deleteCus ([indexPath.row])
    
    
    self.tableView .deleteRows(at: [indexPath], with: UITableViewRowAnimation .fade)
}


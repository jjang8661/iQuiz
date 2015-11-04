//
//  ViewController.swift
//  iQuiz
//
//  Created by seowoosuk on 11/3/15.
//  Copyright © 2015 Woosuk Seo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewObject: UITableView!
    var subjectsData = ["Mathematics","Super Heroes","Science"];
    var descriptionData = ["Mathematics questions","Super Heroes questions","Science questions"];
    var imagesData = ["MathIcon","HeroIcon","ScienceIcon"];

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return subjectsData.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = self.tableViewObject.dequeueReusableCellWithIdentifier("mycell") as! TableViewCell
        
        cell.quizLabel.text = subjectsData[indexPath.row]
        cell.quizLabel2.text = descriptionData[indexPath.row]
    
        let name = imagesData[indexPath.row]
        cell.pictureView.image = UIImage(named: "\(name)")!
        
        return cell
    }
    
    @IBAction func btnSettings(sender: UIBarButtonItem) {
            let alertController = UIAlertController(title: "Settings goes here", message: "What do you want to do?", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alertController.addAction(defaultAction)
            
            presentViewController(alertController, animated: true, completion: nil)
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}


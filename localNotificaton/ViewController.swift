

import UIKit
import UserNotifications
class ViewController: UIViewController {

    @IBAction func btn_poprest(_ sender: UIButton)
    {
        let first = UNMutableNotificationContent()
        
        first.title = "First Notification"
        first.subtitle = "yell yeah"
        first.body = "hey i am here to notify you???"
        first.badge = 1
        
        
        // now we deploy the notification
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest (identifier: "first to notify", content: first, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (bool, error) in
            // code goes here
            
        }
        
        
        
    }

  


}


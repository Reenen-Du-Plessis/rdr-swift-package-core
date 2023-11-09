import UIKit
import CommonUI

public class Feature1TableViewController: UITableViewController {
    public override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        performNetworkCall()
    }
    
    private func registerCells() {
        tableView.register(LabelDetailImageTableViewCell.nib(),
                           forCellReuseIdentifier: LabelDetailImageTableViewCell.reuseIdentifier)
    }
    
    private func performNetworkCall() {
        
    }

    // MARK: - Table view data source

    public override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: LabelDetailImageTableViewCell.reuseIdentifier,
                                                 for: indexPath)
        
        return cell
    }
}

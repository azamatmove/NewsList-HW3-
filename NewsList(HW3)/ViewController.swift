//
//  ViewController.swift
//  NewsList(HW3)
//
//  Created by Azamat Sarinzhiev on 2/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var news: [NewsModel] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath) as! NewsCellTableViewCell
        
        cell.newsTitle.text = news[indexPath.row].title
        
        cell.newsDescription.text = news[indexPath.row].description
        
        cell.newsImage.image = UIImage(named: news[indexPath.row].image)
        
        return cell
    }
    
    @IBAction func RemoveNews(_ sender: Any) {
        news.remove(at: 0)
        news.remove(at: news.count - 1)
        newsTableView.reloadData()
    }
    
    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        news.append(NewsModel(title: "High school friends get unbelievable surprise after texting the wrong number", description: "A Michigan high school basketball team was organizing team practices when someone accidentally included a wrong number in the group text. What happened next is something they’ll remember for the rest of their lives. ", image: "Lebron"))
        
        news.append(NewsModel(title: "Alan Tudge: Australia minister stood aside over 'abusive' affair allegations", description: "Rachelle Miller alleged that she had experienced bullying and intimidation during her relationship with Education Minister Alan Tudge in 2017. Mr Tudge said he completely and utterly rejected the allegations.", image: "AuMinister"))
        
        news.append(NewsModel(title: "High school friends get unbelievable surprise after texting the wrong number", description: "A Michigan high school basketball team was organizing team practices when someone accidentally included a wrong number in the group text. What happened next is something they’ll remember for the rest of their lives. ", image: "Lebron"))
        
        news.append(NewsModel(title: "Alan Tudge: Australia minister stood aside over 'abusive' affair allegations", description: "Rachelle Miller alleged that she had experienced bullying and intimidation during her relationship with Education Minister Alan Tudge in 2017. Mr Tudge said he completely and utterly rejected the allegations.", image: "AuMinister"))
        
        news.append(NewsModel(title: "High school friends get unbelievable surprise after texting the wrong number", description: "A Michigan high school basketball team was organizing team practices when someone accidentally included a wrong number in the group text. What happened next is something they’ll remember for the rest of their lives. ", image: "Lebron"))
        
        news.append(NewsModel(title: "Alan Tudge: Australia minister stood aside over 'abusive' affair allegations", description: "Rachelle Miller alleged that she had experienced bullying and intimidation during her relationship with Education Minister Alan Tudge in 2017. Mr Tudge said he completely and utterly rejected the allegations.", image: "AuMinister"))
        
        news.append(NewsModel(title: "High school friends get unbelievable surprise after texting the wrong number", description: "A Michigan high school basketball team was organizing team practices when someone accidentally included a wrong number in the group text. What happened next is something they’ll remember for the rest of their lives. ", image: "Lebron"))
        
        news.append(NewsModel(title: "Alan Tudge: Australia minister stood aside over 'abusive' affair allegations", description: "Rachelle Miller alleged that she had experienced bullying and intimidation during her relationship with Education Minister Alan Tudge in 2017. Mr Tudge said he completely and utterly rejected the allegations.", image: "AuMinister"))
        
        news.append(NewsModel(title: "High school friends get unbelievable surprise after texting the wrong number", description: "A Michigan high school basketball team was organizing team practices when someone accidentally included a wrong number in the group text. What happened next is something they’ll remember for the rest of their lives. ", image: "Lebron"))
        
        news.append(NewsModel(title: "Alan Tudge: Australia minister stood aside over 'abusive' affair allegations", description: "Rachelle Miller alleged that she had experienced bullying and intimidation during her relationship with Education Minister Alan Tudge in 2017. Mr Tudge said he completely and utterly rejected the allegations.", image: "AuMinister"))
        
        newsTableView.dataSource = self
        newsTableView.delegate = self
    }


}


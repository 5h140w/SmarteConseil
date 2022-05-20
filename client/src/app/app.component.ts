import { ArticleService } from './services/article.service';
import { Component, OnInit } from '@angular/core';
import { Article } from './models/article';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {
  articles: Article[] = [];
  constructor(private service: ArticleService) {}

  ngOnInit(): void {
    this.getAllarticles();
  }
  getAllarticles() {
    this.service.getArticles().subscribe(
      (data) => {
        this.articles = data;
      },
      (err) => {
        console.log(err);
      }
    );
  }
}

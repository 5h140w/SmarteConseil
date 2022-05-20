import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root',
})
export class ArticleService {
  private url = 'http://localhost/server/articles.php';

  constructor(private http: HttpClient) {}

  httpOptions: { headers: HttpHeaders } = {
    headers: new HttpHeaders({ 'Content-Type': 'application/json' }),
  };
  getArticles() {
    return this.http.get<any>(this.url);
  }
}

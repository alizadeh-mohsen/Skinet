import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { Product } from './models/Product';
import { Pagination } from './models/Pagination';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {

  title = 'Skinet';
  products: Product[] = [];
  constructor(private http: HttpClient) {

  }
  ngOnInit(): void {
    this.http.get<Pagination<Product[]>>('http://localhost:5001/api/products').subscribe({
      next: response => this.products = response.data
    })
  }
}

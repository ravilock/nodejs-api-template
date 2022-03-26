import express from 'express';

export class App {
    constructor() {
        this.app = express();
        this.applyMiddleware();
    }

    public app: express.Application;

    private applyMiddleware(): void {
        this.app.use(express.json({ limit: '200mb' }));
        this.app.use(express.urlencoded({ limit: '200mb', extended: true }));
    }
}

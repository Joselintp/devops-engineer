import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ConfigModule } from '@nestjs/config';
import { MongooseModule } from '@nestjs/mongoose';
import { config } from 'dotenv';

@Module({
  imports: [ConfigModule.forRoot({
    envFilePath: '.env',
    isGlobal: true,
  }),
MongooseModule.forRoot(process.env.MONGO_DB_URI,{
  useNewUrlParser: true,
  useUnifiedTopology: true,
})],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}

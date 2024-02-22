import { ObjectType, Field, Float, ID } from '@nestjs/graphql';
import { Chip } from 'src/chip/entities/chip.entity';
import { SubCategory } from 'src/sub-category/entities/sub-category.entity';
import { ColorAndStock } from './color-on-product.entity';

@ObjectType()
export class Product {
  @Field(() => ID, { description: 'Product' })
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => String)
  description: string;

  @Field(() => String)
  slug: string;

  @Field(() => Float)
  price: number;

  @Field(() => SubCategory)
  subCategory: SubCategory;

  @Field(() => [ColorAndStock], { nullable: true })
  colorAndStock?: ColorAndStock[] | null;

  @Field(() => Chip)
  chip: Chip;
}

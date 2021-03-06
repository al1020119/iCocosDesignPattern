# iCocosDesignPattern
iOS开发中的设计模式


===


{% img /images/iCocosCoder.jpg Caption %}  

{% img /images/iCocosPublic.jpg Caption %}  


本文摘自：[伯乐在线](http://ios.jobbole.com/85360/),因为自己研究并学习ios设计模式的时候寻找了好多相关文章，最后发现这篇才是最适合ios开发的，当然你也可以自己通过C或者java设计模式的规范进行演变。


源码下载地址：[https://github.com/al1020119/iCocosDesignPattern](https://github.com/al1020119/iCocosDesignPattern)


#对象创建
####原型（Prototype）

使用原型实例指定创建对象的种类，并通过复制这个原型创建新的对象。


	NSArray *array = [[NSArray alloc] initWithObjects:@1, nil];
    NSArray *array2 = array.copy;

array 就是原型了，array2 以 array 为原型，通过 copy 操作创建了 array2。

当创建的实例非常复杂且耗时，或者新实例和已存在的实例值相同，使用原型模式去复制已经存在的实例效率更高。
####工厂方法（Factory Method）

    定义创建对象的接口，让子类决定实例化哪一个类。工厂方法使得类的实例化延迟到其子类。

工厂方法是针对每一种产品提供一个工厂类。通过不同的工厂类来创建不同的产品实例。

{% img /images/iosshejimoshi001.png Caption %} 


+ 如上图，+ create():Product 就是工厂方法，ConcreatFactoryA 与 ConcreateFactoryB 就是两个工厂类，ConcreateProductA 与 ConcreateProductB 就是两个工厂类对应的产品类，通过不同的工厂生产不同类型的产品，且两个产品类最终返回的是他们的父类 Product，隐藏了对象的具体类型。工厂方法模式让创建的对象拥有一组共同的接口，使我们无需关心做了不同类型接口的具体实现，只需要调用 Product 的接口就行。


> 工厂方法模式的扩展性也很好，新增的产品类并不需要修改客户端代码。但每新加一个产品类都需要新建一个工厂类，会造成项目中的类过多。

而在 Cocoa Touch 框架中，以 NSNumber 举例，将原有的 alloc+init 拆开写：

	 id obj1 = [NSNumber alloc];
	    id obj2 = [NSNumber alloc];
	    id obj3 = [obj1 initWithBool:YES];

发现 + alloc 后并非生成了我们期望的类实例，而是一个NSPlacehodlerNumber 的中间对象，后面的 – initWithXXXXX 消息都是发送给这个中间对象，再由它做工厂，生成真的对象。如 obj3 的实际类型为 NSCFBoolean，而 obj4 的实际类型为 NSCFNumber 。
####抽象工厂（Abstract Factory）

    提供一个创建一系列相关或相互依赖对象的接口，而无需指定它们具体的类。

{% img /images/iosshejimoshi002.png Caption %} 





+ 如上图，抽象工厂有一个产品族的概念，Factory1 与 Factory2 是继承 AbstractFactory 的两个产品族工厂类， 继承了父类创建 A，B 两个产品的方法，不同产品族工厂类会创建不同类型的产品，最终返回了不同的产品族对象，既 ProductA 和 ProductB。

在 Cocoa Touch 框架中，类簇是抽象工厂模式在 iOS 下的一种实现，以 NSArray 举例，将原有的 alloc+init 拆开写：
	
	id obj1 = [NSArray alloc]; // __NSPlacehodlerArray *
	id obj2 = [NSMutableArray alloc];  // __NSPlacehodlerArray *
	id obj3 = [obj1 init];  // __NSArrayI *
	id obj4 = [obj2 init];  // __NSArrayM *

发现 + alloc 后并非生成了我们期望的类实例，而是一个NSPlacehodlerArray 的中间对象，后面的 – init 或 – initWithXXXXX 消息都是发送给这个中间对象，再由它做工厂，生成真的对象。这里的 NSArrayI 和 __NSArrayM 分别对应 Immutable 和 Mutable（后面的 I 和 M 的意思）

>于是顺着思路猜实现，__NSPlacehodlerArray 必定用某种方式存储了它是由谁 alloc 出来的这个信息，才能在 init 的时候知道要创建的是可变数组还是不可变数组。

抽象工厂将一系列的产品族统一到一起创建，增加产品族很方便，但增加产品很麻烦，需要改动太多的类的接口。
####生成器（Builder）
将一个复杂对象的构建与它的表现分离，使得同样的构建过程可以创建不同的表现。
生成器可以将构建对象的过程分为，客户 – 指导者 – 生成器 的关系，


	CharacterBuilder *characterBuilder = [[StandarCharacterBuilder alloc] init];
    ChasingGame *game = [[ChasingGame alloc] init];

    Character *player = [chasingGame createPlayer:characterBuilder];
    Character *enemy = [chasingGame createEnemy:characterBuilder];

characterBuilder 就是生成器了，而 game 就是指导者。指导者里声明了创建不同表现的对象的方法。而方法里由生成器 characterBuilder 来构建不同的 Character 类型的对象。

+ 生成器模式将复杂的生成对象的过程交给了生成器去完成，作为客户的我们只需要根据简单的接口去生成不同表现的对象。如上述代码中的 player 以及 enemy。玩家和敌人具体的属性数值我们不需要去设置，而是交给生成器去设置。


####单例（Singleton）

    保证一个类仅有一个实例，并提供一个访问它的全局访问点。

在 Cocoa Touch 框架中，最常见的使用了单例模式的就是 UIApplication 类了。每个应用程序有且仅有一个 UIApplication 的实例，它由 UIApplicationMain 函数在程序启动时创建为单例对象，之后，对同一 UIApplication 实例可以通过其 sharedApplication 类方法进行访问。

单例用来集中管理对类的对象所提供的资源，例如应用程序中需要用集中式的类来协调其服务，这个类就应该生成单一的实例。

+ 单例模式在多线程的应用场合下必须小心使用。如果当唯一实例尚未创建时，有两个线程同时调用创建方法，那么它们同时没有检测到唯一实例的存在，从而同时各自创建了一个实例，这样就有两个实例被构造出来，从而违反了单例模式中实例唯一的原则。 解决这个问题的办法是为指示类是否已经实例化的变量提供一个互斥锁。


#接口适配
####适配器（Adapter）

    将一个类的接口转换成客户希望的另一个接口，适配器模式使得原本由于接口不兼容而不能一起工作的那些类可以一起工作。

适配器模式分为类适配器模式和对象适配器模式。
{% img /images/iosshejimoshi003.png Caption %} 



+ 上图是对象适配器模式，Adapter（适配器）遵守了 Target（目标接口）协议，拥有一个 Adaptee（被适配者）的对象 adaptee 的引用，当调用 Adapter 的 request 方法，request 方法里会去调用 adapteee 的 specificRequest 方法。

####类适配模式

{% img /images/iosshejimoshi004.png Caption %} 


类适配器模式中适配器和被适配者是继承关系。request 方法里会去调用 super 的 specificRequest 方法，达到将类的接口转换成客户希望的另一个接口。

适配器模式主要应用于“希望复用一些现存的类，但是接口又与复用环境要求不一致的情况”，在遗留代码复用、类库迁移等方面非常有用。
####桥接（Bridge）

    将抽象部分与它的实现部分分离，使它们都可以独立地变化。

桥接模式是软件设计模式中最复杂的模式之一，在软件系统中，某些类型由于自身的逻辑，它具有两个或多个维度的变化。

{% img /images/iosshejimoshi005.png Caption %} 



+ 如上图，毛笔和颜色是两个维度的变化，可以选择新建 9 个类去实现不同颜色的不同毛笔，也可以如图所示，去组合两个维度。对于客户端而言，可以针对两个维度的抽象层编程，在程序运行的时候再动态确认两个维度的子类，动态组合对象，将两个独立变化的维度完全解耦，以便能够灵活地扩充任一维度而对另一维度不造成任何影响。比如增加一种毛笔并不需要去改动图中的实现部分，增加一种颜色也不需要去改变抽象部分。（抽象部分是面向我们编程的接口部分，我们绘图的时候是调用毛笔类的绘图方法）。

桥接模式可以让抽象与实现之间不形成绑定关系，在运行时可以切换实现，也将抽象和实现完全解耦，可以独立扩展。
####外观（Facade）

    为系统中的一组接口提供一个统一的接口。外观顶一个高层接口，让子系统更易于使用。

外观模式主要是使用一个外观类，为复杂的子系统提供一个简单的接口，而子系统的复杂调用交给外观类去做。

{% img /images/iosshejimoshi006.png Caption %} 


+ 如上图，数据的来源可能是不同数据库，获取数据可能非常的复杂，所以使用一个外观类提供简单的获取数据的接口，复杂的操作让外观类去做。做到让子系统更加的易用。


#对象去耦
####中介者（Mediator）

    用一个对象来封装一系列对象的交互方式，中介者使各对象不需要显示地相互引用，从而使其耦合松散，而且可以独立地改变它们之间的交互。

我们开发的程序是由大量的类来组成的，随着程序功能的不断增加，类和类之间的依赖关系也跟着趋于复杂，而中介者模式便能解决这个问题，

{% img /images/iosshejimoshi007.png Caption %} 

 

+ 如图所示，6 个 VC 类之间的交互可能特别多，如果让他们相互依赖，然后管理这些 VC 之间的关系是一件非常繁琐的事情，我们要处理各个 VC 之间的关系，每当一个 VC 要跳转到另外个 VC，我们需要包含新的 VC 的头文件。而使用中介者模式，让 VC 之间的交互变成 VC 和中介者的交互，用中介者来管理多对多的复杂的对象群，降低了各个对象之间的耦合，减少了对象之间逻辑的复杂度，但也可能导致中介者类中的实现过于复杂。

UINavigationController 就是一个中介者，如下图所示

{% img /images/iosshejimoshi008.png Caption %} 


视图控制器的切换都是与 UINavigationController 做交互。由 UINavigationController 去做集中管理。
####观察者（Observer）

    定义对象间的一种一对多的依赖关系，当一个对象的状态发生改变时，所有依赖于它的对象都得到通知并自动更新。

在 Cocoa Touch 框架中通知和 KVO 都实现了观察者模式。通知是由一个中心对象为所有观察者提供变更通知，KVO 是被观察的对象直接向观察者发送通知。

{% img /images/iosshejimoshi009.png Caption %} 

+ 如上图，Subject 的值改变时，通知观察者 ObserverA，ObserverB，ObserverC，我的数据改变了，依赖我的你们需要更新状态了。

被观察者不需要知道有多少个观察者和观察者的更新细节，降低被观察者和观察者之间的耦合。
#抽象集合
####组合（Composite）

    将对象组合成树形结构以表示“部分-整体”的层次结构。组合使得用户对单个对象和组合对象的使用具有一致性。

在 Cocoa Touch 框架中，UIView 被组织成一个组合结构。每个 UIView 都可以将其它 UIView 设置为自己的子视图，形成一个树形结构，让客户端可以对单个 UIView 或者对 UIView 组合统一对待。

既平移一个 UIView，可以做到平移这一个 UIView 组合，且操作方法与平移单个 UIView 一致。
####迭代器（Iterator）

    提供一种方法顺序访问一个聚合对象中的各个元素，而又不需要暴露该对象的内部表示，

在 Cocoa Touch 中的 NSEnumerator 就实现了迭代器模式，如以下代码

	 NSArray *anArray = @[@"this", @"is", @"a", @"test"];
	    NSEnumerator *itemEnumerator = [anArray objectEnumerator];
	 
	    NSString *item;
	    while (item = [itemEnumerator nextObject]) {
	        NSLog(@"%@", item);
	    }

迭代器分为两种，上面使用了一个外部迭代器，外部迭代器让客户端直接操作迭代过程，如上面代码就是使用一个 while 循环去迭代。

下面是使用了内部迭代器，客户端不需要知道实现迭代的方式。

	 NSArray *anArray = @[@"this", @"is", @"a", @"test"];
	    NSString *string = @"a";
	    [anArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
	        NSLog(@"%@", obj);
	        if ([obj isEqualToString:string]) {
	            *stop = YES;
	        }
	    }];

客户端不需要手动实现迭代器，只要对每个元素进行处理就行。
#行为扩展
####访问者（Visitor）

    表示一个作用于某对象结构中的各元素的操作，它让我们可以在不改变各元素的类的前提下定义作用于这些元素的新操作。

当一个复杂的对象结构包含很多其他的对象，每个对象都有不同的接口，这个时候如果想添加新的接口进行新的操作，就得修改该对象的类，如果每个对象都需要添加新操作，就需要修改更多的类。而访问者模式就是用来不修改原有类添加新的操作。

访问者模式涉及两个关键元素，访问者和被访问对象。访问者遵从访问协议，访问协议里声明了访问方法。访问方法类似下面

	- (void)visitEngine:(NimoEngine *)engine;
	- (void)visitWheel:(NimoWheel *)wheel;

访问者模式流程，直接调用访问者里的访问方法，访问方法里实现了新添加的操作，engine 与 wheel 既被访问对象，达到了将新操作集中在访问者里处理的效果。如果再需要新添加一系列对各个元素的操作，只需要再添加一个访问者类就行。

> 访问者能访问复杂元素里的每一个元素，然后由访问者对这些元素进行行为扩展。
####装饰（Decorator）

    动态地给一个对象添加一些额外的职责。就扩展功能来说，装饰模式相比生成子类更为灵活。

Category 就是实现了装饰的设计模式。Category 是 Objective-C 的语言功能，通过它可以给类添加方法的接口与实现，而不必子类化。 从这个设计模式的描述联想到 Category，就没什么难理解了。
责任链（Chain of Responsibility）

    使多个对象都有机会处理请求，从而避免请求的发送者和接受者之间发生耦合。此模式将这些对象连成一条链，并沿着这条链传递请求，直到有一个对象处理它为止。

Cocoa Touch 中的事件处理流程–响应者链就实现了责任链模式。以点击为例，首先通过 hit-test view 的流程找到被点击的视图，被点击的视图如果不处理点击事件，则沿着响应者链向上回溯，比如给父视图发消息，让父视图去处理，父视图不处理则继续沿着响应者链向上回溯，直到有对象处理它为止，如果都不处理，则该事件丢弃。
#算法封装
####模板方法（Template Method）

    定义一个操作中算法的骨架，而将一些步骤延迟到子类中。模板方法使子类可以重定义算法的某些特定步骤而不改变该算法的结构。

模板方法可以提高可扩展性与可复用性，比如 UIView 类中的定制绘图,UIView 的结构不改变，只是继承 UIView,再重载 – (void)drawRect:(CGRect)rect
方法。所以 – (void)drawRect:(CGRect)rect 就是模板方法，默认什么都不做或者只是做了部分操作，缺少特性操作，用来给子类选择重载与实现的方法。
####策略（Strategy）

    定义一系列算法，把它们一个个封装起来，并且使它们可相互替换。本模式使得算法可独立于使用它的客户而变化。

举一个常见的例子，验证 UITextField 输入是否有效。有两个算法分别是验证邮箱的和验证电话号码的。可以通过 if else 这样的判断代码来决定执行哪个算法。也可以通过策略模式，将算法封装起来，如下图
￼

{% img /images/iosshejimoshi010.png Caption %} 


Strategy 是这一系列算法的父类，ConcreteStrategyA, B, C。是三种算法，给 Context 对象添加一个 Strategy 类型的属性，里面存放着 ConcreteStrategyA 或者 B，C。然后 Context 对象就知道去执行哪个算法。也就知道自己需要执行什么策略。

> 策略模式首先将算法都封装起来了，易于理解，且易于切换和扩展。
####命令（Command）

    将请求封装为一个对象，从而可用不同的请求对客户进行参数化，对请求排队或记录请求日志，以及支持可撤销的操作。

Cocoa Touch 框架中的 NSInvocation 就是实现了命令模式。


	NSMethodSignature*signature = [ViewController instanceMethodSignatureForSelector:@selector(sendMessageWithNumber:WithContent:)];
	  //1、创建NSInvocation对象
	  NSInvocation*invocation = [NSInvocation invocationWithMethodSignature:signature];
	  invocation.target = self;
	  //invocation中的方法必须和签名中的方法一致。
	  invocation.selector = @selector(sendMessageWithNumber:WithContent:);
	  /*第一个参数：需要给指定方法传递的值
	         第一个参数需要接收一个指针，也就是传递值的时候需要传递地址*/
	  //第二个参数：需要给指定方法的第几个参数传值
	  NSString*number = @"1111";
	  //注意：设置参数的索引时不能从0开始，因为0已经被self占用，1已经被_cmd占用
	  [invocation setArgument:&number atIndex:2];
	  NSString*number2 = @"啊啊啊";
	  [invocation setArgument:&number2 atIndex:3];
	  //2、调用NSInvocation对象的invoke方法
	  //只要调用invocation的invoke方法，就代表需要执行NSInvocation对象中制定对象的指定方法，并且传递指定的参数
	  [invocation invoke];

将行为封装成对象，而不是直接触发行为，因为是对象，所以可以很容易的设计一个命令队列，也可以方便的记录进日志里，以及实现行为的撤销。（因为行为对象可以记录进日志里，所以可以根据日志得知上一个操作做了什么，从而进行撤销）。
#性能与对象访问
##享元（Flyweight）

	利用共享技术有效地支持大量细粒度的对象。

tableViewCell 的重用机制就是实现了享元模式。在要使用一个 Cell 的时候，会先去重用池里看看 tableView 有没有可以重用的 cell，如果有重用该 cell，没有创建一个，这就是享元模式。

享元模式主要有两个关键组件，可共享的享元对象和保存它们的享元池。

> 举另一个实现例子，画面上需要显示 100 个相同的图案，可以只生成一个包含该图案 image 的 imageView。其它 99 个只需要去享元池里去拿这个 imageView 实例的信息，然后在页面里直接绘制图案，这样就不需要生成 100 个图案实例。

享元模式通过共享一部分必须的对象，减少对象的创建，节省大量的内存。
####代理（Proxy）

    为其它对象提供一种代理以控制对这个对象的访问。

代理设计模式的英文名是 Proxy pattern，和我们常见的 delegate（委托） 没关系。

iOS 中常见的代理模式例子为引用计数，当一个复杂对象的多份副本须存在时，代理模式可以结合享元模式以减少内存用量。典型做法是创建一个复杂对象及多个代理者，每个代理者会引用到原本的复杂对象。而作用在代理者的运算会转送到原本对象。一旦所有的代理者都不存在时，复杂对象会被移除。

>
当然，上面的代理模式中的代理者什么都没做，代理对象作为 A 和 C 中间的协调者，可以多做点操作，可以理解为 VPN 中的代理者可以对传输数据加密，而 A 和 C 中的代理者，也可以隐藏 C 的信息，做到对 C 的保护。

#对象状态
####备忘录（Memento）

    在不破坏封装的情况下，捕获一个对象的内部状态，并在该对象之外保存这个状态，这样以后就可将该对象恢复到原先保存的状态。

Cocoa Touch 框架中归档可以实现备忘录模式，Cocoa 的归档是对对象及其属性还有同其他对象间的关系进行编码，形成一个文档，该文档可以保存于文件系统，也可在进程或网络间传输，最后又可以通过解档将文档解码成与该对象归档时状态一致的对象。

> 既将对象保存一个备份放置到其它地方，可以随时使用备份将该对象恢复到原先保存的状态，用来储存关键对象的关键状态。


#####总结：（如果看了这么久您依然不知道上面在扯上面鬼，那么请结合ios开发中遇到的技术点简单粗略的体会一下下面的东西，再返回看看或许你就会明白很多）

+ 备忘录-归档
+ 代理-引用计数（非delegate）
+ 享元-TableView重用机制
+ 命令-NSInvocation
+ 策略-文本有效
+ 模板-drawRect
+ 装饰-分类
+ 责任链-响应者
+ 迭代器-NSEnumerator
+ 组合-UIView
+ 观察者-通知、KVO
+ 中介-导航
+ 原型-.copy
+ 工厂方法-initWithBool
+ 抽象工厂-alloc]initWithXXX
+ 单利-无处不在哈哈
+ 适配器-网络请求接口

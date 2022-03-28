import 'package:flutter/material.dart';
import 'description.dart';
import 'review.dart';

class TabSlide extends StatefulWidget {
  const TabSlide({Key?key}):super(key: key);

  @override
  _TabContentSlide createState()=> _TabContentSlide();
}
class _TabContentSlide extends State<TabSlide> 
    with TickerProviderStateMixin{
  late TabController _tabController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: selectedIndex,length: 3, vsync: this);
  }

  @override
  void dispose(){
    _tabController.dispose();
    super.dispose();
  }
   @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Column(
        children:<Widget> [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.white,
              child: TabBar(tabs: const[
                Text('Description'),
                Text('More info'),
                Text('Reviews'),
              ],
              unselectedLabelColor: Colors.grey[300],
              indicatorColor: Colors.orange,
              labelColor: Colors.orange,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              isScrollable: false,
              labelPadding: const EdgeInsets.all(13),
              controller: _tabController,
              onTap: (int index){
                setState(() {
                  selectedIndex=index;
                  _tabController.animateTo(index);
                });
              },
              ),
            ),
          ),
          IndexedStack(
            children:<Widget> [
              Visibility(
                child: const Description(),
                maintainState: true,
                visible: selectedIndex==0,
              ),
              Visibility(
                child:const Text('Chicago, Illinois, couple Valerie and Ted Rock took the cat in two years ago after they visited a local bar, where a group of drinkers were handing the animal around and making fun of him.Since being adopted by the Rocks and after getting his picture posted on the Internet, the two-year-old feline has become an international media celebrity.'),
                maintainState: true,
                visible: selectedIndex==1,
              ),
              Visibility(
                child:const Reviewpage(),
                maintainState: true,
                visible: selectedIndex==2,  
              ),
            ],
            index: selectedIndex,
          )
        ],
      ),
    );
  }
}
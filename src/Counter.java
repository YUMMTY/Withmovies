public class Counter {
    // 次数
    private static int count = 0;
    // 获取计数器值
    public int getCount(){
        return ++count;
    }
}
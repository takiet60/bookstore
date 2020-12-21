package com.project.store;

import com.project.store.model.ProductModel;

import java.util.HashMap;
import java.util.Map;

public class Data {
    public static Map<Integer, ProductModel> data = new HashMap<Integer, ProductModel>();

    /*
        Category id: 1.Sinh học - 2.Kinh doanh - 3.Nấu ăn - 4.Sức khỏe và thể thao - 5.Lịch sử
        - 6.Bí ẩn - 7.Truyền cảm hứng - 8.Tiểu thuyết Lãng mạn - 9.Kỹ năng sống -
        10. Kỹ năng sống - 11. Hài hước - 12. Kinh dị  - 13. Thần thoại  - 14. Tác phẩm kinh điển
        - 15.Phiêu lưu - 16.Trinh thám

            URL Images sẽ là 1 mảng gồm nhiều hình - Tải và lưu trong thư mục như trong ví dụ
        - Nếu được thì tải nhiều hình cùng một sản phẩm để demo
            Không cần thay đổi shortDescription
     */

    static {
        data.put(1, new ProductModel(1, "Con Chim Xanh Biếc Bay Về (Nguyễn Nhật Ánh) (Bìa Mềm)",
                7, 149865, 26, 110900, new String[]{"http://localhost:8080/store_war_exploded/images/products/1.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.",
                "NXB Trẻ"));
    }
}

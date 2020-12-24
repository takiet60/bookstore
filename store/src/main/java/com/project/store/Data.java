package com.project.store;

import com.project.store.model.ProductModel;
import com.sun.org.apache.xpath.internal.objects.XString;

import java.util.HashMap;
import java.util.Map;

public class Data {
    public static Map<Integer, ProductModel> data = new HashMap<Integer, ProductModel>();

    /*
        Category id: 1.Sinh học - 2.Kinh doanh - 3.Nấu ăn - 4.Sức khỏe và thể thao - 5.Lịch sử
        - 6.Bí ẩn - 7.Truyền cảm hứng - 8.Tiểu thuyết Lãng mạn - 9.Kỹ năng sống -
        10. Kỹ năng sống - 11. Hài hước - 12. Kinh dị  - 13. Thần thoại  - 14. Tác phẩm kinh điển
        - 15.Phiêu lưu - 16.Trinh thám - 17.Giao duc

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

        data.put(2, new ProductModel(2, "Tô Bình Yên Vẽ Hạnh Phúc", 7, 78000, 25, 58500, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/97/bc/ae/7fe8a253cce6da248aebe6679bb9c88f.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Sau thành công của cuốn sách đầu tay “Phải lòng với cô đơn” chàng họa sĩ nổi tiếng và tài năng Kulzsc đã trở lại với một cuốn sách vô cùng đặc biệt mang tên:\n" +
                        "\"Tô bình yên - vẽ hạnh phúc” – sắc nét phong cách cá nhân với một chút “thơ thẩn, rất hiền”."));

        data.put(3, new ProductModel(3, "Thay Đổi Cuộc Sống Với Nhân Số Học", 9, 247895, 5, 235500, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/15/11/f8/56b303e000cb42faada663569fc5d7c9.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam."));

        data.put(4, new ProductModel(4, "Đàn Ông Sao Hỏa Đàn Bà Sao Kim", 10, 188000, 40, 112800, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/0a/f6/38/bc10734989977da424642a1c4750eee2.jpg", "https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Ngày xửa ngày xưa, những người sao Hỏa và sao Kim đã gặp gỡ, yêu nhau và sống hạnh phúc bởi họ tôn trọng và chấp nhận mọi điều khác biệt. Rồi họ đến Trái Đất và chứng lãng quên đã xảy ra: Họ quên rằng họ đến từ những hành tinh khác"));

        data.put(5, new ProductModel(5, "Muôn Kiếp Nhân Sinh (Many Lives - Many Times)", 6, 168000, 35, 109000, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/30/ee/5a/e2aed009bb558b5d2cfbbe157b428ba4.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày."));

        data.put(6, new ProductModel(6, "Đừng Lựa Chọn An Nhàn Khi Còn Trẻ", 7, 80000, 27, 58900, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/eb/62/6b/0e56b45bddc01b57277484865818ab9b.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Trong độ xuân xanh phơi phới ngày ấy, bạn không dám mạo hiểm, không dám nỗ lực để kiếm học bổng, không chịu tìm tòi những thử thách trong công việc, không phấn đấu hướng đến ước mơ của mình. Bạn mơ mộng rằng làm việc xong sẽ vào làm ở một công ty nổi tiếng, làm một thời gian sẽ thăng quan tiến chức. Mơ mộng rằng khởi nghiệp xong sẽ lập tức nhận được tiền đầu tư, cầm được tiền đầu tư là sẽ niêm yết trên sàn chứng khoán. Mơ mộng rằng muốn gì sẽ có đó, không thiếu tiền cũng chẳng thiếu tình, an hưởng những năm tháng êm đềm trong cuộc đời mình. Nhưng vì sao bạn lại nghĩ rằng bạn chẳng cần bỏ ra chút công sức nào, cuộc sống sẽ dâng đến tận miệng những thứ bạn muốn? Bạn cần phải hiểu rằng: Hấp tấp muốn mau chóng thành công rất dễ khiến chúng ta đi vào mê lộ. Thanh xuân là khoảng thời gian đẹp đẽ nhất trong đời, cũng là những năm tháng then chốt có thể quyết định tương lai của một người. Nếu bạn lựa chọn an nhàn trong 10 năm, tương lai sẽ buộc bạn phải vất vả trong 50 năm để bù đắp lại. Nếu bạn bươn chải vất vả trong 10 năm, thứ mà bạn chắc chắn có được là 50 năm hạnh phúc. Điều quý giá nhất không phải là tiền mà là tiền bạc. Thế nên, bạn à, đừng lựa chọn an nhàn khi còn trẻ."));

        data.put(7, new ProductModel(7, "Cá Voi Tỷ Đô - Câu Chuyện Về Kẻ Đã Lừa Cả Phố Wall, Hollywood Và Thế Giới", 2, 215000, 20, 172000, new String[]{"https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png https://salt.tikicdn.com/cache/280x280/ts/product/44/f3/74/5a32d6b7ee18591ae6de5d77dc293105.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Hành trình của Jho Low, phụ tá 27 tuổi bí ẩn của thủ tướng Malaysia - Najib Razak, thực hiện một trong những “vụ trộm lớn nhất trong lịch sử nhân loại”.\n" +
                        "Vào năm 2009, cựu sinh viên Trường Kinh doanh Wharton của Đại học Pennsylvania (Mỹ) Jho Low, với dáng vẻ “bầu bĩnh”, hiền lành đã khởi động chuỗi hành vi gian lận lớn chưa từng thấy - biểu tượng cho mối đe dọa lớn tiếp theo đối với hệ thống tài chính toàn cầu.\n" +
                        "Trong một thập kỷ, Low, với sự trợ giúp của ngân hàng Goldman Sachs (Mỹ) và nhiều nhân vật khác, đã rút ruột hàng tỷ đô la từ Quỹ đầu tư nhà nước Malaysia 1MDB - ngay dưới mũi của các cơ quan giám sát ngành tài chính toàn cầu."));

        data.put(8, new ProductModel(8, "Mindmap English Grammar - Ngữ Pháp Tiếng Anh Bằng Sơ Đồ Tư Duy", 17, 190000, 37, 120000, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/8d/dd/67/cd9aa1dcdfa1e47b853b9b01d9802c59.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Trước đây, khi tiếng Anh chưa là ngôn ngữ quốc tế trong môi trường toàn cầu hóa, xu hướng việc giảng dạy và học tập tiếng Anh tại Việt Nam thiên về hai kỹ năng ĐỌC HIỂU và VIẾT. Hệ quả là trong các thế hệ trước, nhiều người đọc hiểu và viết tiếng Anh thông thạo không kém người bản xứ được học hành tử tế; ngược lại, gặp khó khăn khi giao tiếp nghe-nói bằng tiếng Anh.Từ thập niên 90 thế kỷ trước đây, giao tiếp ngôn ngữ bao gồm bốn kỹ năng cơ bản: NGHE - NÓI - ĐỌC - VIẾT. Do vậy khi nói đến tiếng Anh giao tiếp có nghĩa là cần phải giao tiếp được cả bốn kỹ năng trên. Phương pháp giao tiếp dựa trên sự phát triển kỹ năng ngôn ngữ của trẻ em: giai đoạn đầu tập trung vào phát triển NGHE - NÓI; giai đoạn phát triển tập trung ĐỌC VIẾT."));

        data.put(9, new ProductModel(9, "Biên Niên Cô Đơn", 8, 98000, 15, 84000, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/7a/fb/4e/4df230b5dbd95ef93e67d0b18df28d7a.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "“Mất bao lâu để quên một người?!\n" +
                        "\n" +
                        "Sau khi chia tay người cũ, mình mất hết một năm loay hoay trong mớ bòng bong cảm xúc trong lòng. Lúc đó không buồn, cũng chẳng quá đau khổ dằn vặt gì, vẫn cứ sống và làm việc bình thường, thậm chí làm việc còn nhiều hơn trước và thành công hơn trước."));

        data.put(10, new ProductModel(10, "Sapiens: Lược Sử Loài Người (Tái Bản Có Chỉnh Sửa)", 5, 210000, 36, 134000, new String[]{"https://salt.tikicdn.com/cache/280x280/ts/product/56/3f/4f/f4e6621e69775643d22604bccef281bf.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Sapiens, đưa chúng ta vào một chuyến đi kinh ngạc qua toàn bộ lịch sử loài người, từ những gốc rễ tiến hóa của nó đến thời đại của chủ nghĩa tư bản và kỹ thuật di truyền, để khám phá tại sao chúng ta đang trong những điều kiện sinh sống hiện tại."));

        data.put(11, new ProductModel(11, "AdBerkshire Hathaway: Những Bài Học Tuyệt Vời Từ Warren Buffett Và Charlie Munger Tại Đại Hội Cổ Đông Thường Niên Của Tập Đoàn Trong Suốt 30 Năm", 2, 199000, 20, 159000, new String[]{"https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png https://salt.tikicdn.com/cache/280x280/ts/product/f7/97/19/2de0abc81c14d6b8c7aa323e464f2406.jpg"},
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Berkshire Hathaway đúng như tên gọi của nó được viết lên từ chính câu chuyện của tập đoàn lừng danh thế giới với sự dẫn dắt của tỉ phú Warrent Buffett.\n" +
                        "\n" +
                        "Berkshire Hathaway là một cuốn sách đáng chú ý về sự khôn ngoan vượt thời gian, hào phóng và thông minh dí dỏm của Warren Buffett (Chủ tịch kiêm CEO) cùng Charlie Munger (Phó chủ tịch) thông qua những chiến lược đầu tư được truyền lại cho các cổ đông trong suốt 30 năm tại các cuộc họp thường niên."));
        
    }
}

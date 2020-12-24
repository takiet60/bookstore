package com.project.store;

import com.project.store.model.ProductModel;
import com.sun.org.apache.xpath.internal.objects.XString;

import javax.swing.*;
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
                7, 149865, 26, 110900, http://localhost:8080/store_war_exploded/images/products/1.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.",
                "NXB Trẻ"));

        data.put(2, new ProductModel(2, "Tô Bình Yên Vẽ Hạnh Phúc", 7, 78000, 25, 58500, "https://salt.tikicdn.com/cache/280x280/ts/product/97/bc/ae/7fe8a253cce6da248aebe6679bb9c88f.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Sau thành công của cuốn sách đầu tay “Phải lòng với cô đơn” chàng họa sĩ nổi tiếng và tài năng Kulzsc đã trở lại với một cuốn sách vô cùng đặc biệt mang tên:\n" +
                        "\"Tô bình yên - vẽ hạnh phúc” – sắc nét phong cách cá nhân với một chút “thơ thẩn, rất hiền”.", "NXB Trẻ"));

        data.put(3, new ProductModel(3, "Thay Đổi Cuộc Sống Với Nhân Số Học", 9, 247895, 5, 235500, "https://salt.tikicdn.com/cache/280x280/ts/product/15/11/f8/56b303e000cb42faada663569fc5d7c9.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.", "NXB Trẻ"));

        data.put(4, new ProductModel(4, "Đàn Ông Sao Hỏa Đàn Bà Sao Kim", 10, 188000, 40, 112800, "https://salt.tikicdn.com/cache/280x280/ts/product/0a/f6/38/bc10734989977da424642a1c4750eee2.jpg", "https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Ngày xửa ngày xưa, những người sao Hỏa và sao Kim đã gặp gỡ, yêu nhau và sống hạnh phúc bởi họ tôn trọng và chấp nhận mọi điều khác biệt. Rồi họ đến Trái Đất và chứng lãng quên đã xảy ra: Họ quên rằng họ đến từ những hành tinh khác", "NXB Trẻ"));

        data.put(5, new ProductModel(5, "Muôn Kiếp Nhân Sinh (Many Lives - Many Times)", 6, 168000, 35, 109000, "https://salt.tikicdn.com/cache/280x280/ts/product/30/ee/5a/e2aed009bb558b5d2cfbbe157b428ba4.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "“Muôn kiếp nhân sinh” là tác phẩm do Giáo sư John Vũ - Nguyên Phong viết từ năm 2017 và hoàn tất đầu năm 2020 ghi lại những câu chuyện, trải nghiệm tiền kiếp kỳ lạ từ nhiều kiếp sống của người bạn tâm giao lâu năm, ông Thomas – một nhà kinh doanh tài chính nổi tiếng ở New York. Những câu chuyện chưa từng tiết lộ này sẽ giúp mọi người trên thế giới chiêm nghiệm, khám phá các quy luật về luật Nhân quả và Luân hồi của vũ trụ giữa lúc trái đất đang gặp nhiều tai ương, biến động, khủng hoảng từng ngày.", "NXB Trẻ"));

        data.put(6, new ProductModel(6, "Đừng Lựa Chọn An Nhàn Khi Còn Trẻ", 7, 80000, 27, 58900, "https://salt.tikicdn.com/cache/280x280/ts/product/eb/62/6b/0e56b45bddc01b57277484865818ab9b.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Trong độ xuân xanh phơi phới ngày ấy, bạn không dám mạo hiểm, không dám nỗ lực để kiếm học bổng, không chịu tìm tòi những thử thách trong công việc, không phấn đấu hướng đến ước mơ của mình. Bạn mơ mộng rằng làm việc xong sẽ vào làm ở một công ty nổi tiếng, làm một thời gian sẽ thăng quan tiến chức. Mơ mộng rằng khởi nghiệp xong sẽ lập tức nhận được tiền đầu tư, cầm được tiền đầu tư là sẽ niêm yết trên sàn chứng khoán. Mơ mộng rằng muốn gì sẽ có đó, không thiếu tiền cũng chẳng thiếu tình, an hưởng những năm tháng êm đềm trong cuộc đời mình. Nhưng vì sao bạn lại nghĩ rằng bạn chẳng cần bỏ ra chút công sức nào, cuộc sống sẽ dâng đến tận miệng những thứ bạn muốn? Bạn cần phải hiểu rằng: Hấp tấp muốn mau chóng thành công rất dễ khiến chúng ta đi vào mê lộ. Thanh xuân là khoảng thời gian đẹp đẽ nhất trong đời, cũng là những năm tháng then chốt có thể quyết định tương lai của một người. Nếu bạn lựa chọn an nhàn trong 10 năm, tương lai sẽ buộc bạn phải vất vả trong 50 năm để bù đắp lại. Nếu bạn bươn chải vất vả trong 10 năm, thứ mà bạn chắc chắn có được là 50 năm hạnh phúc. Điều quý giá nhất không phải là tiền mà là tiền bạc. Thế nên, bạn à, đừng lựa chọn an nhàn khi còn trẻ.", "NXB Trẻ"));

        data.put(7, new ProductModel(7, "Cá Voi Tỷ Đô - Câu Chuyện Về Kẻ Đã Lừa Cả Phố Wall, Hollywood Và Thế Giới", 2, 215000, 20, 172000, "https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png https://salt.tikicdn.com/cache/280x280/ts/product/44/f3/74/5a32d6b7ee18591ae6de5d77dc293105.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Hành trình của Jho Low, phụ tá 27 tuổi bí ẩn của thủ tướng Malaysia - Najib Razak, thực hiện một trong những “vụ trộm lớn nhất trong lịch sử nhân loại”.\n" +
                        "Vào năm 2009, cựu sinh viên Trường Kinh doanh Wharton của Đại học Pennsylvania (Mỹ) Jho Low, với dáng vẻ “bầu bĩnh”, hiền lành đã khởi động chuỗi hành vi gian lận lớn chưa từng thấy - biểu tượng cho mối đe dọa lớn tiếp theo đối với hệ thống tài chính toàn cầu.\n" +
                        "Trong một thập kỷ, Low, với sự trợ giúp của ngân hàng Goldman Sachs (Mỹ) và nhiều nhân vật khác, đã rút ruột hàng tỷ đô la từ Quỹ đầu tư nhà nước Malaysia 1MDB - ngay dưới mũi của các cơ quan giám sát ngành tài chính toàn cầu.", "NXB Trẻ"));

        data.put(8, new ProductModel(8, "Mindmap English Grammar - Ngữ Pháp Tiếng Anh Bằng Sơ Đồ Tư Duy", 17, 190000, 37, 120000, "https://salt.tikicdn.com/cache/280x280/ts/product/8d/dd/67/cd9aa1dcdfa1e47b853b9b01d9802c59.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Trước đây, khi tiếng Anh chưa là ngôn ngữ quốc tế trong môi trường toàn cầu hóa, xu hướng việc giảng dạy và học tập tiếng Anh tại Việt Nam thiên về hai kỹ năng ĐỌC HIỂU và VIẾT. Hệ quả là trong các thế hệ trước, nhiều người đọc hiểu và viết tiếng Anh thông thạo không kém người bản xứ được học hành tử tế; ngược lại, gặp khó khăn khi giao tiếp nghe-nói bằng tiếng Anh.Từ thập niên 90 thế kỷ trước đây, giao tiếp ngôn ngữ bao gồm bốn kỹ năng cơ bản: NGHE - NÓI - ĐỌC - VIẾT. Do vậy khi nói đến tiếng Anh giao tiếp có nghĩa là cần phải giao tiếp được cả bốn kỹ năng trên. Phương pháp giao tiếp dựa trên sự phát triển kỹ năng ngôn ngữ của trẻ em: giai đoạn đầu tập trung vào phát triển NGHE - NÓI; giai đoạn phát triển tập trung ĐỌC VIẾT.", "NXB Trẻ"));

        data.put(9, new ProductModel(9, "Biên Niên Cô Đơn", 8, 98000, 15, 84000, "https://salt.tikicdn.com/cache/280x280/ts/product/7a/fb/4e/4df230b5dbd95ef93e67d0b18df28d7a.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "“Mất bao lâu để quên một người?!\n" +
                        "\n" +
                        "Sau khi chia tay người cũ, mình mất hết một năm loay hoay trong mớ bòng bong cảm xúc trong lòng. Lúc đó không buồn, cũng chẳng quá đau khổ dằn vặt gì, vẫn cứ sống và làm việc bình thường, thậm chí làm việc còn nhiều hơn trước và thành công hơn trước.", "NXB Trẻ"));

        data.put(10, new ProductModel(10, "Sapiens: Lược Sử Loài Người (Tái Bản Có Chỉnh Sửa)", 5, 210000, 36, 134000, "https://salt.tikicdn.com/cache/280x280/ts/product/56/3f/4f/f4e6621e69775643d22604bccef281bf.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Sapiens, đưa chúng ta vào một chuyến đi kinh ngạc qua toàn bộ lịch sử loài người, từ những gốc rễ tiến hóa của nó đến thời đại của chủ nghĩa tư bản và kỹ thuật di truyền, để khám phá tại sao chúng ta đang trong những điều kiện sinh sống hiện tại.", "NXB Trẻ"));

        data.put(11, new ProductModel(11, "AdBerkshire Hathaway: Những Bài Học Tuyệt Vời Từ Warren Buffett Và Charlie Munger Tại Đại Hội Cổ Đông Thường Niên Của Tập Đoàn Trong Suốt 30 Năm", 2, 199000, 20, 159000, "https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png https://salt.tikicdn.com/cache/280x280/ts/product/f7/97/19/2de0abc81c14d6b8c7aa323e464f2406.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Berkshire Hathaway đúng như tên gọi của nó được viết lên từ chính câu chuyện của tập đoàn lừng danh thế giới với sự dẫn dắt của tỉ phú Warrent Buffett.\n" +
                        "\n" +
                        "Berkshire Hathaway là một cuốn sách đáng chú ý về sự khôn ngoan vượt thời gian, hào phóng và thông minh dí dỏm của Warren Buffett (Chủ tịch kiêm CEO) cùng Charlie Munger (Phó chủ tịch) thông qua những chiến lược đầu tư được truyền lại cho các cổ đông trong suốt 30 năm tại các cuộc họp thường niên.", "NXB Trẻ"));

        data.put(12, new ProductModel(12, "Từ Điển Tiếng “Em”", 8, 69000, 20, 55200 "https://salt.tikicdn.com/cache/280x280/ts/product/e6/a5/3a/14338e7ae795f56d66996b611070b173.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "TỪ ĐIỂN TIẾNG “EM” – Định nghĩa về thế giới mới!\n" +
                        "\n" +
                        "Bạn sẽ bất ngờ, khi cầm cuốn “từ điển” xinh xinh này trên tay.\n" +
                        "\n" +
                        "Và sẽ còn ngạc nhiên hơn nữa, khi bắt đầu đọc từng trang sách…\n" +
                        "\n" +
                        "Dĩ nhiên là vì “Từ điển tiếng “Em” không phải là một cuốn từ điển thông thường rồi!",
                "Nhà Xuất Bản Phụ Nữ Việt Nam"));

        data.put(13, new ProductModel(13, "Nóng Giận Là Bản Năng , Tĩnh Lặng Là Bản Lĩnh", 10, 89000, 33, 60000, "https://salt.tikicdn.com/cache/280x280/ts/product/70/9a/98/e6d54019a2079b9565114bce93b245b7.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Sai lầm lớn nhất của chúng ta là đem những tật xấu, những cảm xúc tiêu cực trút bỏ lên những người xung quanh, càng là người thân càng dễ gây thương tổn.\n" +
                        "\n" +
                        "Cái gì cũng nói toạc ra, cái gì cũng bộc lộ hết không phải là thẳng tính, mà là thiếu bản lĩnh. Suy cho cùng, tất cả những cảm xúc tiêu cực của con người đều là sự phẫn nộ dành cho bất lực của bản thân. Nếu bạn đúng, bạn không cần phải nổi giận. Nếu bạn sai, bạn không có tư cách nổi giận.",
                "Nhà Xuất Bản Thế Giới"));

        data.put(14, new ProductModel(14, "Siêu Cò – How To Be A Power Connector", 2, 250000, 20, 200000, "https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png https://salt.tikicdn.com/cache/280x280/ts/product/ed/f7/02/6273208f38c2cd0e0b5a4d3a445c801e.png", "https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Một câu nói nổi tiếng trong tiếng Tây Ban Nha “Nói cho tôi biết bạn chơi với ai, và tôi sẽ nói cho bạn biết bạn là người thế nào” hay Người Việt cũng có rất nhiều câu nói tương tự: “Đi với bụt mặc áo cà sa, đi với ma mặc áo giấy”.",
                "Nhà Xuất Bản Thế Giới"));

        data.put(15, new ProductModel(15, "Sách Bứt phá 9+ môn Tiếng anh lớp 10", 17, 200000, 8, 184000, "https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Cuốn sách Bứt phá 9+ môn Tiếng anh lớp 10 là cuốn sách giúp học sinh củng cố kiến thức và tăng cường kĩ năng vận dụng, nắm chắc phương pháp để ứng dụng giải thành thạo mọi dạng bài tập.\n" +
                        "\n" +
                        "Bộ sách gồm 4 cuốn 4 môn Toán, Vật lí, Hóa học, Tiếng anh\n" +
                        "\n" +
                        "Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...",
                "Nhà Xuất Bản Đại Học Quốc Gia Hà Nội"));

        data.put(16, new ProductModel(16, "Vui Vẻ Không Quạu Nha - Tản Văn", 11, 68000, 31, 47400, "https://salt.tikicdn.com/cache/280x280/ts/product/b2/56/d3/17262447faaef713be60d6b25ec0551d.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Cuộc đời ngày ngày nói yêu mình.\n" +
                        "\n" +
                        "Xong cuộc đời lại đủ thứ phức tạp và bất công với mình.\n" +
                        "\n" +
                        "Vậy là cuộc đời ghét mình rồi!\n" +
                        "\n" +
                        "Thôi nào!\n" +
                        "\n" +
                        "Thả lỏng và tận hưởng sự vui vẻ đi. Vì chẳng phải cuộc đời đang ghét bạn đâu, mà chính bạn bạn đang loay hoay với những mệt nhọc ở trên đời. Ví dụ như nay đã là deadline mà bỗng bị rớt mạng, sáng nay đi làm quên đem theo ví, hay đồng nghiệp ở công ty nói xấu mình,",
                "Nhà Xuất Bản Phụ Nữ"));

        data.put(17, new ProductModel(17, "Thiên Tài Bên Trái, Kẻ Điên Bên Phải", 1, 144328, 33, 96700, "https://salt.tikicdn.com/cache/280x280/ts/product/be/95/53/6a6e9ccf4adf23c2c40463cc29563051.JPG",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "NẾU MỘT NGÀY ANH THẤY TÔI ĐIÊN, THỰC RA CHÍNH LÀ ANH ĐIÊN ĐẤY!\n" +
                        "\n" +
                        "Hỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình? Là vô vàn thứ lý thuyết được các bậc vĩ nhân kiểm chứng, là luật lệ, là cả nghìn thứ sự thật bọc trong cái lốt hiển nhiên, hay những triết lý cứng nhắc của cuộc đời?\n" +
                        "\n" +
                        "Lại đây, vượt qua thứ nhận thức tẻ nhạt bị đóng kín bằng con mắt trần gian, khai mở toàn bộ suy nghĩ, để dòng máu trong bạn sục sôi trước những điều kỳ vĩ, phá vỡ mọi quy tắc. Thế giới sẽ gọi bạn là kẻ điên, nhưng vậy thì có sao? Ranh giới duy nhất giữa kẻ điên và thiên tài chẳng qua là một sợi chỉ mỏng manh: Thiên tài chứng minh được thế giới của mình, còn kẻ điên chưa kịp làm điều đó. Chọn trở thành một kẻ điên để vẫy vùng giữa nhân gian loạn thế hay khóa hết chúng lại, sống mãi một cuộc đời bình thường khiến bạn cảm thấy hạnh phúc hơn?",
                "Nhà Xuất Bản Thế Giới"));

        data.put(18, new ProductModel(18, "Con Chim Xanh Biếc Bay Về (Nguyễn Nhật Ánh) (Bìa Cứng)", 14, 270000, 30, 189000, "https://salt.tikicdn.com/cache/280x280/ts/product/da/6a/6c/dd77b39d450443cc6b5f714c8a3fcb4e.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Không giống như những tác phẩm trước đây lấy bối cảnh vùng quê miền Trung đầy ắp những hoài niệm tuổi thơ dung dị, trong trẻo với các nhân vật ở độ tuổi dậy thì, trong quyển sách mới lần này nhà văn Nguyễn Nhật Ánh lấy bối cảnh chính là Sài Gòn – Thành phố Hồ Chí Minh nơi tác giả sinh sống (như là một sự đền đáp ân tình với mảnh đất miền Nam). Các nhân vật chính trong truyện cũng “lớn” hơn, với những câu chuyện mưu sinh lập nghiệp lắm gian nan thử thách của các sinh viên trẻ đầy hoài bão. Tất nhiên không thể thiếu những câu chuyện tình cảm động, kịch tính và bất ngờ khiến bạn đọc ngẩn ngơ, cười ra nước mắt. Và như trong mọi tác phẩm Nguyễn Nhật Ánh, sự tử tế và tinh thần hướng thượng vẫn là điểm nhấn quan trọng trong quyển sách mới này.",
                "NXB Trẻ"));

        data.put(19, new ProductModel(19, "The Big Four - 4 Đại Gia Kiểm Toán: Deloitte - PWC - EY - KPMG: Quá Khứ Kỳ Lạ Và Tương Lai Hiểm Trở Của Sự Độc Quyền Kiểm Toán Toàn Cầu", 2, 168000, 20, 134000, "https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "“Big Four” hình thành thế nào?\n" +
                        "\n" +
                        "Trước năm 1989, thế giới kiểm toán vẫn được thống trị bởi nhóm “Big 8”: (1) Arthur Andersen, (2) Arthur Young & Co., (3) Coopers & Lybrand, (4) Ernst & Whinney, (5) Deloitte, Haskins & Sells, (6) KPMG, (7) Touche Ross, (8) Price Waterhouse.\n" +
                        "\n" +
                        "Năm 1989, hai vụ sát nhập vô cùng lớn đã giảm nhóm “Big 8” xuống còn “Big 6”: Ernst & Whinney và Arthur Young & Co sát nhập để tạo ra Ernst and Young (EY); Deloitte, Haskins & Sells hợp nhất với Touche Ross tạo thành Deloitte Touche.\n" +
                        "\n" +
                        "Năm 1998, Price Waterhouse sát nhập với Coopers & Lybrand tạo nên PriceWaterhouseCoopers (PwC). “Big 6” trở thành “Big 5”.\n" +
                        "\n" +
                        "Năm 2002, Arthur Anderson phá sản. “Big Four” hình thành và tồn tại đến ngày nay.",
                "NXB Tài Chính"));

        data.put(20, new ProductModel(20, "Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề", 17, 65000, 35, 42250, "https://salt.tikicdn.com/cache/280x280/ts/product/d5/53/0e/fc00028419754638dd5b250abbcb0de7.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề\n" +
                        "\n" +
                        "Nghe nói đọc viết là 4 kĩ năng quan trọng để có thể học và sử dụng tốt tiếng Anh - ngôn ngữ toàn cầu. Tuy nhiên không phải ai cũng có thể thành thạo những kĩ năng này. Nghe hiểu là một trong những kĩ năng đòi hỏi sự tập trung và rèn luyện của người học.\n" +
                        "\n" +
                        "Luyện nghe từ vựng tiếng Anh theo chủ điểm sẽ cung cấp những bài tập với trình độ nâng cao, là tài liệu bổ ích cho những ai muốn nâng cao khả năng nghe hiểu thông qua học từ vựng.",
                "Nhà Xuất Bản Đại Học Quốc Gia Hà Nội"
                ));

        data.put(21, new ProductModel(21, "Tôi Quyết Định Sống Cho Chính Tôi (Tặng Kèm 1 Sổ To Do List 2020)", 10, 87794, 32, 59700, "https://salt.tikicdn.com/cache/280x280/ts/product/c1/6a/3e/537f7b9bb219be81e217e0c7b5b037e6.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Cuốn sách đạt giải thưởng “Cuốn sách của năm” tại Hàn Quốc vào năm 2017.\n" +
                        "\n" +
                        "Đã tái bản hơn 100 lần kể từ lần xuất bản đầu tiên vào năm 2016.\n" +
                        "\n" +
                        "Được nhiều nghệ sĩ chọn đọc và giới thiệu đến các fan của mình, đơn cử là JungKook (BTS).\n" +
                        "\n" +
                        " Như tác giả Kim Suhyun đã chia sẻ về quá trình sáng tác cuốn sách này:\n" +
                        "\n" +
                        "“Tôi đã cố gắng ghi ra những điều quan trọng nhất trong cuộc sống như:\n" +
                        "\n" +
                        "Công việc, các mối quan hệ, niềm vui, tinh thần, thể chất, sức khỏe…\n" +
                        "\n" +
                        "Tôi đã không lường trước những việc có thể xảy ra . Mà tôi chỉ làm (Do) những việc tôi muốn (Want) và có thể (Can). ",
                "Nhà Xuất Bản Thanh Niên"));

        data.put(22, new ProductModel(22, "Cân Bằng Cảm Xúc, Cả Lúc Bão Giông", 1, 95821, 33, 64200, "https://salt.tikicdn.com/cache/280x280/ts/product/fd/61/1d/a19424cfe9d113c32732d93cf2d5f59a.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "Một ngày, chúng ta có khoảng 16 tiếng tiếp xúc với con người, công việc, các nguồn thông tin từ mạng xã hội, loa đài báo giấy… Việc này mang đến cho bạn vô vàn cảm xúc, cả tiêu cực lẫn tích cực.\n" +
                        "Bạn có thể thấy vui khi nhìn một em bé đến trường nhưng 5 phút sau đã nổi cơn tam bành khi bị đứa trẻ con đi xe đạp đâm sầm vào lại còn ăn vạ.\n" +
                        "Hoặc bạn rất dễ phát điên nếu như chỉ còn 5 giây nữa đèn giao thông chuyển từ đỏ sang xanh mà kẻ đi đằng sau bấm còi inh ỏi.\n" +
                        "Hay là, bạn thấy buồn chỉ vì hôm nay trời mưa man mác, mà vẫn phải ngồi trong văn phòng làm việc, bạn bi quan rằng tuổi trẻ thật buồn tẻ.\n" +
                        "Hãy thừa nhận đi! Ai trong số chúng ta cũng sẽ trải qua những điều này. Và cuốn sách này dạy bạn cách làm hòa với chính những tiêu cực bên trong mình…",
                "Nhà Xuất Bản Thế Giới"));

        data.put(23, new ProductModel(23, "The Story Of Art - Câu Chuyện Nghệ Thuật", 7, 994286, 30, 696000, "https://salt.tikicdn.com/cache/280x280/ts/product/d8/4e/2e/30df9a1b00d7bfb638d63bd96e30dc38.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "“The Story of Art\" (Câu Chuyện Nghệ Thuật) được in lần đầu năm 1950 và trong 70 năm qua, được dịch ra gần 30 thứ tiếng và hơn tám triệu bản đã được bán ra trên toàn thế giới. Điều đó khiến tác phẩm trở thành cuốn sách nghệ thuật bán chạy nhất mọi thời đại và là tác phẩm nhập môn nghệ thuật thị giác cho vô số thế hệ độc giả.\n" +
                        "\n" +
                        "Tác giả E.H Gombrich (1909-2001) là một trong những nhà sử học nghệ thuật lỗi lạc nhất của nửa sau thế kỷ 20, đối với giới hàn lâm cũng như với tầng lớp công chúng rộng rãi. Những tác phẩm khác mang tính lý thuyết của ông cũng đã trở thành những công trình then chốt đối với các nhà nghiên cứu lịch sử nghệ thuật.",
                "Nhà Xuất Bản Dân Trí"));

        data.put(24, new ProductModel(24, "Sức Mạnh Của Ngôn Từ (Tặng Kèm 1 Photocard Mintbooks Limited)", 10, 96364, 34, 63600, "https://salt.tikicdn.com/cache/280x280/ts/product/54/6d/2f/b4be918982e5df06cc057454e806651e.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "\n" +
                        "\n" +
                        "“The Story of Art\" (Câu Chuyện Nghệ Thuật) được in lần đầu năm 1950 và trong 70 năm qua, được dịch ra gần 30 thứ tiếng và hơn tám triệu bản đã được bán ra trên toàn thế giới. Điều đó khiến tác phẩm trở thành cuốn sách nghệ thuật bán chạy nhất mọi thời đại và là tác phẩm nhập môn nghệ thuật thị giác cho vô số thế hệ độc giả.\n" +
                        "\n" +
                        "Tác giả E.H Gombrich (1909-2001) là một trong những nhà sử học nghệ thuật lỗi lạc nhất của nửa sau thế kỷ 20, đối với giới hàn lâm cũng như với tầng lớp công chúng rộng rãi. Những tác phẩm khác mang tính lý thuyết của ông cũng đã trở thành những công trình then chốt đối với các nhà nghiên cứu lịch sử nghệ thuật.\n" +
                        "\n" +
                        "Câu Chuyện Nghệ Thuật là một tác phẩm kể về lịch sử nghệ thuật châu Âu từ thời cổ đại đến hiện đại, được tác giả khảo sát và đánh giá trong các lĩnh vực khác nhau như hội họa, điêu khắc, kiến trúc… song hành với những chuyển biến và giao thoa của các nền văn hóa, chính trị, và tôn giáo. Nguồn tư liệu phong phú về các tác phẩm đáng chú ý, những tên tuổi tài năng, những trường phái, phong cách đặc sắc trong dòng chảy nghệ thuật.",
                "Nhà Xuất Bản Dân Trí"));
    }
}

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
                7, 149865, 26, 110900, "http://localhost:8080/store_war_exploded/images/products/1.jpg",
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

        data.put(4, new ProductModel(4, "Đàn Ông Sao Hỏa Đàn Bà Sao Kim", 10, 188000, 40, 112800, "https://salt.tikicdn.com/cache/280x280/ts/product/0a/f6/38/bc10734989977da424642a1c4750eee2.jpg",
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

        data.put(12, new ProductModel(12, "Từ Điển Tiếng “Em”", 8, 69000, 20, 55200, "https://salt.tikicdn.com/cache/280x280/ts/product/e6/a5/3a/14338e7ae795f56d66996b611070b173.jpg",
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

        data.put(14, new ProductModel(14, "Siêu Cò – How To Be A Power Connector", 2, 250000, 20, 200000, "https://salt.tikicdn.com/ts/upload/f3/74/46/f4c52053d220e94a047410420eaf9faf.png",
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

        data.put(25, new ProductModel(25,"Nhà Giả Kim", 10, 96364, 34, 63600, "https://salt.tikicdn.com/cache/280x280/ts/product/54/6d/2f/b4be918982e5df06cc057454e806651e.jpg",
                "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
                "\n" +
                        "\n" +
                        "“The Story of Art\" (Câu Chuyện Nghệ Thuật) được in lần đầu năm 1950 và trong 70 năm qua, được dịch ra gần 30 thứ tiếng và hơn tám triệu bản đã được bán ra trên toàn thế giới. Điều đó khiến tác phẩm trở thành cuốn sách nghệ thuật bán chạy nhất mọi thời đại và là tác phẩm nhập môn nghệ thuật thị giác cho vô số thế hệ độc giả.\n" +
                        "\n" +
                        "Tác giả E.H Gombrich (1909-2001) là một trong những nhà sử học nghệ thuật lỗi lạc nhất của nửa sau thế kỷ 20, đối với giới hàn lâm cũng như với tầng lớp công chúng rộng rãi. Những tác phẩm khác mang tính lý thuyết của ông cũng đã trở thành những công trình then chốt đối với các nhà nghiên cứu lịch sử nghệ thuật.\n" +
                        "\n" +
                        "Câu Chuyện Nghệ Thuật là một tác phẩm kể về lịch sử nghệ thuật châu Âu từ thời cổ đại đến hiện đại, được tác giả khảo sát và đánh giá trong các lĩnh vực khác nhau như hội họa, điêu khắc, kiến trúc… song hành với những chuyển biến và giao thoa của các nền văn hóa, chính trị, và tôn giáo. Nguồn tư liệu phong phú về các tác phẩm đáng chú ý, những tên tuổi tài năng, những trường phái, phong cách đặc sắc trong dòng chảy nghệ thuật.",
                "Nhà Xuất Bản Dân Trí"));
        /*
       --insert into product(name,categoryId,cost,discount,value,images,shortDescription,description,production)values("Hẹn Nhau Phía Sau Tan Vỡ",8,73100,15,86000,"https://salt.tikicdn.com/cache/280x280/ts/product/26/47/ed/1b71072e67efb0da20acc3a6e2371c86.jpg","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.",
"Cuốn sách này…
Dành tặng những tâm hồn tan vỡ, đã yêu, đã chia ly, đã từ biệt…
Và lời chúc cho một cuộc hạnh ngộ đủ đầy yêu thương.", "NXB Phụ Nữ Việt Nam");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Combo Truyện Tranh Song Ngữ Việt - Anh Cho Bé (12 Tập)",17,130000,28,180556
,"https://salt.tikicdn.com/cache/280x280/ts/product/95/96/0e/ba09a3f89d09449d64a53e91bf9dc042.jpg","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","1. Tư duy phóng khoáng và sẵn sàng tiếp thu điều mới mẻ

2. Cơ hội nghề nghiệp tốt hơn trong tương lai

3. Dễ dàng hơn khi học những ngôn ngữ khác trong giai đoạn sau này của cuộc đời

4. Được hưởng sự giáo dục văn hóa đa dạng hơn (với văn học, phim ảnh, âm nhạc…)

5. Khả năng tập trung cao hơn

6. Khả biến thần kinh (giúp thông minh hơn)

7. Làm chậm lại sự khởi phát bệnh Alzheimer so với những người chỉ dùng một ngôn ngữ…", "Nhà Xuất Bản Phụ Nữ");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Rich Habits - Poor Habits Sự khác biệt giữa người giàu và người nghèo",10,96000
,40,160000,"","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Chúng ta thường đặt câu hỏi: “Tại sao người giàu ngày càng giàu?”. Hầu như không phải do may mắn. Không phải vì nơi họ sinh ra và cũng không phải vì họ thắng xổ số. Chỉ là người giàu làm mọi thứ theo một cách khác. Họ nghĩ khác, họ hành động khác và họ có những thói quen khác.

Có câu ngạn ngữ: “Cho một người một con cá giúp anh ấy ấm bụng một ngày. Dạy một người cách câu cá giúp họ ấm bụng cả đời”.

Cuốn sách “Sự khác biệt giữa người giàu và người nghèo” giúp bạn phát triển các thói quen giàu có và loại bỏ thói quen nghèo khó.", "Nhà Xuất Bản Hồng Đức");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Hai Số Phận (Bìa Cứng)",8,106100,39,173934,"https://salt.tikicdn.com/cache/280x280/ts/product/0a/fb/51/202015881b04b7c8a4b47d15cf9c049f.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","“Hai số phận” không chỉ đơn thuần là một cuốn tiểu thuyết, đây có thể xem là "thánh kinh" cho những người đọc và suy ngẫm, những ai không dễ dãi, không chấp nhận lối mòn.

“Hai số phận” làm rung động mọi trái tim quả cảm, nó có thể làm thay đổi cả cuộc đời bạn. Đọc cuốn sách này, bạn sẽ bị chi phối bởi cá tính của hai nhân vật chính, hoặc bạn là Kane, hoặc sẽ là Abel, không thể nào nhầm lẫn. Và điều đó sẽ khiến bạn thấy được chính mình.

Khi bạn yêu thích tác phẩm này, người ta sẽ nhìn ra cá tính và tâm hồn thú vị của bạn!","Nhà Xuất Bản Văn Học);

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Yêu Những Điều Không Hoàn Hảo",8,100400,28,139444,"https://salt.tikicdn.com/cache/280x280/ts/product/54/55/d6/4ceb6ba3bd81614df8ff4c1411b11f59.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Đại đức Hae Min sinh ra và lớn lên tại Hàn Quốc. Sau khi hoàn thành bằng Thạc sĩ Tôn giáo học đối chiếu ở Đại học Havard và Tiến sĩ Tôn giáo học ở Đại học Princeton, ông ở lại Mỹ tham gia giảng dạy về tôn giáo ở trường Đại học Hampshire, Massachusetts. Không chỉ dừng lại ở nghiên cứu lý thuyết, mùa xuân năm 2000 ông quyết định xuất gia theo tông phái Tào Khê, một tông phái tiêu biểu của Phật giáo Hàn Quốc. Năm 2015, Đại đức Hae Min trở về Seoul, cùng nhiều chuyên gia mở trường Trị liệu tâm hồn, điều trị miễn phí cho những người gặp bất hạnh trong cuộc sống hay đang mang trong lòng nhiều khổ tâm. Đại đức Haemin là một trong những người rất có ảnh hưởng tới giới trẻ Hàn Quốc, trang Twitter cá nhân (https://twitter.com/haeminsunim) của ông hiện có tới hơn một triệu người theo dõi. Sách cùng tác giả: - Những vỡ lẽ của tuổi trẻ - Yêu lấy những điều không hoàn hảo.",Nhà Xuất Bản Thế Giới");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Combo 999 Lá Thư Gửi Cho Chính Mình - Tặng kèm bookmark (Trọn bộ 2 tập)",8,136100,31,197246, "https://salt.tikicdn.com/cache/280x280/ts/product/2e/c6/a6/a555919afeb01514cfe054ed0167bb40.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","999 lá thư gửi cho chính mình” là một tác phẩm đặc biệt đầy cảm hứng đến từ tác giả văn học mạng nổi tiếng Miêu Công Tử, mang một màu sắc riêng biệt qua những lời thư nhỏ nhắn nhủ đến người đọc về giá trị cuộc sống, tình yêu, tuổi trẻ, tương lai… đã làm lay động trái tim của hàng vạn độc giả trẻ.
Cầm trên tay cuốn sách “999 lá thư gửi cho chính mình” – bạn sẽ hiểu rằng: tuổi trẻ của chúng ta dù có mong manh đến đâu thì cũng sẽ thành công vượt qua mọi khó khăn một cách mạnh mẽ ngoài sức tưởng tượng. Một ngày nào đó, bạn sẽ cảm nhận được hạnh phúc, tự tin của chính bản thân và học được cách mỉm cười trước những nỗi đau của quá khứ.", "Nhà Xuất Bản Thanh Niên");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("999 Lá Thư Gửi Cho Chính Mình – Mong Bạn Trở Thành Phiên Bản Hoàn Hảo Nhất",8,70700,29, 99577, "https://salt.tikicdn.com/cache/280x280/ts/product/c4/46/99/0dcc6e04aca0a78cda09a2d8b156dccb.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Cầm trên tay cuốn sách “999 lá thư gửi cho chính mình” – bạn sẽ hiểu rằng: tuổi trẻ của chúng ta dù có mong manh đến đâu thì cũng sẽ thành công vượt qua mọi khó khăn một cách mạnh mẽ ngoài sức tưởng tượng. Một ngày nào đó, bạn sẽ cảm nhận được hạnh phúc, tự tin của chính bản thân và học được cách mỉm cười trước những nỗi đau của quá khứ.", "Nhà Xuất Bản Thanh Niên");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Bạn Đắt Giá Bao Nhiêu?",18,66200,33,98806,"https://salt.tikicdn.com/cache/280x280/ts/product/87/c9/c0/bfebf4adcb31c8eb5c39fd3779cc4b68.jpg https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất."," “Bạn đắt giá bao nhiêu ?” là một tác phẩm văn học Trung Quốc của nhà văn Vãn Tình. Cuốn sách này không sử dụng ngôn từ sướt mướt hay lãng mạn nhưng lại rất cuốn hút. Những câu chuyện trải đời được đề cập đến trong cuốn sách dưới ngòi bút của Vãn Tình không hề khô khan, nhàm chán. Mỗi vấn đề mà tác giả đề cập đến đều rất gần gũi, thân quen. Những giải pháp tác giả đưa ra cũng rất hợp lý, logic, không giáo điều, sáo rỗng. Nếu bạn chấp nhận bỏ cuốn truyện ngôn tình trên tay xuống và cầm cuốn sách “Bạn đắt giá bao nhiêu?” lên thì bạn sẽ không thể rời mắt khỏi nó.", "Nhà Xuất Bản Thế Giới");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Tony Buổi Sáng - Trên Đường Băng (Tái Bản 2017)",16,53200,34,80606,"https://salt.tikicdn.com/cache/280x280/ts/product/61/87/8a/082a07cec3232115e2b22636fd71593c.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Khi còn trẻ, hãy ra ngoài nhiều hơn ở nhà. Hãy nhào vô xin người khác “bóc hết, lột sạch” khả năng của mình. Chỉ sợ bất tài nộp hồ sơ “xin việc”, mà chả ai thèm cho, chả ai thèm bóc lột. Khi đã được bóc và lột hết, dù sau này đi đâu, làm gì, bạn đều cực kỳ thành công. Vì năng lực được trui rèn trong quá trình làm cho người khác. Sự chăm chỉ, tính kỷ luật, quen tay quen chân, quen ngáp, quen lười… cũng từ công việc mà ra. Mọi ông chủ vĩ đại đều từng là những người làm công ở vị trí thấp nhất. Họ đều rẽ trái trong khi mọi người rẽ phải. Họ có những quyết định không theo đám đông, không cam chịu sống một cuộc đời tầm thường, nhạt nhòa… rồi chết.

Còn những bạn thu nhập 6 triệu cũng túng thiếu, 20 triệu cũng đi vay mượn để tiêu dùng, thì thôi, cuộc đời họ chấm dứt giấc mơ lớn. Tiền nong cá nhân quản lý không được, thì làm sao mà quản trị tài chính một cơ nghiệp lớn?”. Tư duy thế nào thì nó ra số phận thế đó."", "NXB Trẻ");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Chẳng Mùa Đông Nào Không Thể Vượt Qua",9,73400,25,97867, "https://salt.tikicdn.com/cache/280x280/ts/product/d3/3c/c5/762b50376055f39812a164acc63a54ac.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Mùa đông chỉ lui tới vài ba tháng một năm, nhưng có những người lại bị sự lạnh lẽo theo chân cả cuộc đời. Khó khăn vốn xuất hiện vào một giai đoạn nhất thời, nhưng bởi những suy nghĩ tiêu cực mà trở thành gánh nặng trong lòng chúng ta.

Rất nhiều khoảnh khắc, con người vô tình quên mất lý do vì sao bản thân bắt đầu và nỗ lực đến tận hôm nay. Họ cứ mải miết lạc lối trong màn đêm mà không nhận ra khoảng cách đi tới ánh sáng chỉ cách một lần dũng cảm mở mắt nhìn trời. Có những vấn đề trong đời thật ra không quá nghiêm trọng, nhưng bởi chẳng dám đối mặt nên thành nỗi lo thấm qua ngày ngày tháng tháng, hủy hoại dần từng mảnh linh hồn.

Gió lạnh mùa đông phóng đại mọi nỗi sợ. Sợ trời dần chuyển rét, sợ bầu trời âm u xám xịt, sợ tiếng gió rít vào thanh cửa mang hơi lạnh về. Sợ một mình qua đường giữa phố, người với người ai cũng có tay đan. May mà mùa đông rất ngắn ngủi, vượt qua được những thời điểm khó khăn nhất, tất cả sẽ trở thành quá khứ đã xa. Bởi chẳng mùa đông nào không thể vượt qua.", "Nhà Xuất Bản Thế Giới");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Tôi Từng Nghĩ Mọi Thứ Sẽ Ổn Khi Trở Thành Người Lớn (Tặng Kèm 1 Bookmark)
",9,63600,34,96364,"https://salt.tikicdn.com/cache/280x280/ts/product/0b/e4/9d/9819a2afb854e301ebaf93e8e4a8a9d3.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","“Tôi từng nghĩ mọi thứ sẽ ổn khi trở thành người lớn” chính là cuốn sách chữa lành mọi đau đớn mà con người phải đối mặt hàng ngày dưới cái mác “người lớn”!
21 chương sách lột tả chi tiết từng khía cạnh về 21 căn bệnh phổ biến của người hiện đại. Đó là căn bệnh Sợ thứ 2, bệnh Thích mang mặt nạ, bệnh Không thể ăn uống theo ý muốn của mình…. Khi các biểu hiện đã trở thành bệnh lý thì vấn đề sẽ trở nên nghiêm trong hơn, đó là căn bệnh Trầm cảm, Rối loạn cảm xúc lượng cực, Chứng rối loạn hoảng sợ, Nhân cách trầm uất…", "Nhà Xuất Bản Văn Học");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Dám Bị Ghét
",8,66800,30,95429,"https://salt.tikicdn.com/cache/280x280/ts/product/74/11/ff/6304c47fec56e6f0b2110be65af0c7c2.jpg","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Các mối quan hệ xã hội thật mệt mỏi.

Cuộc sống sao mà nhạt nhẽo và vô nghĩa.

Bản thân mình xấu xí và kém cỏi.

Quá khứ đầy buồn đau còn tương lai thì mờ mịt.

Yêu cầu của người khác thật khắc nghiệt và phi lý.

TẠI SAO BẠN CỨ PHẢI SỐNG THEO KHUÔN MẪU NGƯỜI KHÁC ĐẶT RA?

Dưới hình thức một cuộc đối thoại giữa Chàng thanh niên và Triết gia, cuốn sách trình bày một cách sinh động và hấp dẫn những nét chính trong tư tưởng của nhà tâm lý học Alfred Adler, người được mệnh danh là một trong “ba người khổng lồ của tâm lý học hiện đại”, sánh ngang với Freud và Jung. Khác với Freud cho rằng quá khứ và hoàn cảnh là động lực làm nên con người ta của hiện tại, Adler chủ trương “cuộc đời ta là do ta lựa chọn”, và tâm lý học Adler được gọi là “tâm lý học của lòng can đảm”.", "Nhà Xuất Bản Lao Động");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Tôi Tự Học",9,32900,45,597818,"https://salt.tikicdn.com/cache/280x280/media/catalog/product/n/x/nxbtre_full_28032017_020337.u5102.d20170331.t150309.516945.jpg https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Sách “Tôi tự học” của tác giả Nguyễn Duy Cần đề cập đến khái niệm, mục đích của học vấn đối với con người đồng thời nêu lên một số phương pháp học tập đúng đắn và hiệu quả. Tác giả cho rằng giá trị của học vấn nằm ở sự lĩnh hội và mở mang tri thức của con người chứ không đơn thuần thể hiện trên bằng cấp. Trong xã hội ngày nay, không ít người quên đi ý nghĩa đích thực của học vấn, biến việc học của mình thành công cụ để kiếm tiền nhưng thực ra nó chỉ là phương tiện để  đưa con người đến thành công mà thôi. Bởi vì học không phải để lấy bằng mà học còn để “biết mình” và để “đối nhân xử thế”.","NXB Trẻ");


--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Tuổi Trẻ Đáng Giá Bao Nhiêu (Tái Bản)",9,56600,29,79718, "https://salt.tikicdn.com/cache/280x280/ts/product/f8/34/c8/5fbf2a6f9d07b76d98e2fff2b29b0d3c.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất."," "Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.

Bạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.

Bạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.

Suy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.

Nên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.

Vì sau tất cả, chẳng ai quan tâm." ", "NXB Trẻ");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Trời Sinh Vụng Về, Hãy Bù Đắp Bằng Sự Kiên Trì",9,96550,25,128733
 , "https://salt.tikicdn.com/cache/280x280/ts/product/e7/3a/33/d90504644a26715758f68aa20eebbde5.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Có khi nào bạn tự hỏi: Tại sao chúng ta phải cố gắng hết mình, trong khi những người khác chẳng cần làm gì cũng có được mọi thứ?

Tại sao chúng ta phải chạy hết tốc lực, trong khi những người khác chỉ cần thả bước thong dong?

Thực ra, đa phần chúng ta đều là những người không được ông trời ưu ái, cũng chẳng hề có tài năng thiên bẩm. Vậy mà ai ai cũng mơ ước một cuộc sống viên mãn, muốn được tự do tự tại đi du lịch nhiều nơi, muốn được sống là chính mình trong những năm tháng tuổi trẻ…

Mơ ước thì nhiều, nhưng người thực sự kiên trì được thì có mấy ai?

Chúng ta muốn thay đổi thế giới, nhưng ngay đến thói quen bản thân ghét cay ghét đắng cũng không bỏ được.

Chúng ta muốn đi du lịch, nhưng ngay cả xuống tầng mua đồ ăn cũng lười chẳng buồn nhấc chân.

Chúng ta muốn học thêm những điều mới, nhưng ngay cả dũng khí mở trang sách đầu tiên cũng không có.

Dần dà, chúng ta trở thành những con người thụ động, chỉ biết than thân trách phận, không chịu nỗ lực nhưng lại muốn nhanh chóng đạt được ước mơ.", "Nhà Xuất Bản Phụ Nữ Việt Nam");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Giáo Trình Hán Ngữ 1 - Tập 1 - Quyển Thượng (Phiên Bản Mới)",17,57650,35,88692,"https://salt.tikicdn.com/cache/280x280/ts/product/0f/6a/97/2aa2278d0efe410ea66257d0ec367eeb.jpg https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Giáo trình Hán ngữ tập 1 phiên bản mới tải app – Cuốn giáo trình Hán ngữ phiên bản mới duy nhất tại Việt Nam

“Giáo trình Hán ngữ phiên bản mới tập 1” là cuốn đầu tiên trong bộ, nằm ở trình độ Sơ cấp dành cho người bắt đầu tiếng Trung.

Trong quá trình học những khó khăn trên có đang ngăn cản bạn chinh phục ngôn ngữ này không?

Bạn là người mới bắt đầu học tiếng Trung, bạn không biết nên tự học như thế nào

Trong khi tiếng Việt và tiếng Anh được viết bằng chữ cái Latinh thì tiếng Trung được viết bằng chữ tượng hình nên rất khó khi bạn tự tìm hiểu ngôn ngữ này. Bạn là người mới bắt đầu học tiếng Trung, bạn muốn tự học nhưng không biết nên học những kiến thức nào, đâu là những kiến thức nền tảng phù hợp với trình độ của những người mới học. Và quan trọng nhất là bạn không biết được nên tìm học từ những tài liệu nào. Trên thị trường tài liệu học tiếng Trung thì nhiều nhưng tài liệu vừa bám sát chương trình dạy học, vừa cập nhật những điểm đổi mới cùng như được biên soạn dễ hiểu thì lại rất ít.", "Nhà Xuất Bản Hồng Đức");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Hành Trình Về Phương Đông (Tái Bản 2019)",9,59900,32,88088, "https://salt.tikicdn.com/cache/280x280/ts/product/46/9d/88/6560a409f40c37ac63d4e279bbea34b7.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất."," “Hành trình về phương Đông” kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. Suốt hai năm trời rong ruổi khắp các đền chùa Ấn Độ, diện kiến nhiều pháp thuật, nhiều cảnh mê tín dị đoan, thậm chí lừa đảo…của nhiều pháp sư, đạo sĩ…họ được tiếp xúc với những vị chân tu thông thái sống ẩn dật ở thị trấn hay trên rặng Tuyết Sơn. Nhờ thế, họ được chứng kiến, trải nghiệm, hiểu biết sâu sắc về các khoa học cổ xưa và bí truyền của văn hóa Ấn Độ như yoga, thiền định, thuật chiêm tin, các phép dưỡng sinh và chữa bệnh, những kiến thức về nhân duyên, nghiệp báo, luật nhân quả, cõi sống và cõi chết…", "Nhà Xuất Bản Văn Học");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Biên Sử Nước (Tiểu Thuyết)",8,68400,28,95000,"https://salt.tikicdn.com/cache/280x280/ts/product/4e/6b/c5/348c12a449b62df2a2f13aed8eb9ae57.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Sau 8 năm Nguyễn Ngọc Tư mới trở lại với độc giả bằng một cuốn tiểu thuyết đậm chất huyền ảo: Biên sử nước. Tinh tế và sắc sảo, huyền ảo và hiện thực cùng hòa quyện, đan xen trong lớp lớp ngôn từ khiến người đọc không thể rời mắt.

Biên Sử Nước là tác phẩm đặc sắc đánh dấu sự trở lại của Nguyễn Ngọc Tư với tiểu thuyết, sau nhiều năm định danh bằng truyện ngắn. Một tiểu thuyết kết tinh được những đặc sắc trong những tìm tòi sáng tạo của Nguyễn Ngọc Tư về nội dung lẫn bút pháp.

Biên Sử Nước vì thế vừa quen thuộc vừa lạ lẫm, cho phép người đọc tái khám phá một Nguyễn Ngọc Tư điêu luyện nhưng mới mẻ.

Biên Sử Nước là cuốn sách thứ hai của Nguyễn Ngọc Tư do Phanbook & NXB Phụ Nữ ấn hành.", "Nhà Xuất Bản Phụ Nữ Việt Nam");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Đời Ngắn Đừng Ngủ Dài (Tái Bản)",9, 52000,31,75362, "https://salt.tikicdn.com/cache/280x280/ts/product/57/44/86/19de0644beef19b9b885d0942f7d6f25.jpg https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất."," “Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”

Bằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm và suy ngẫm trong đời, Robin Sharma tiếp tục phong cách viết của ông từ cuốn sách Điều vĩ đại đời thường để mang đến cho độc giả những bài viết như lời tâm sự, vừa chân thành vừa sâu sắc.", "NXB Trẻ");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Power Vs Force - Trường Năng Lượng Và Những Nhân Tố Quyết Định Tinh Thần Và Sức Khỏe Con Người
", 10,101500,35, 156154, "https://salt.tikicdn.com/cache/280x280/ts/product/99/91/33/5e3634829f1bf05e16aef5cd1b1f3479.jpg
", "Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.", "Tiến sĩ, bác sĩ tâm thần, nhà nghiên cứu nhận thức và giảng viên tâm linh nổi tiếng người Mỹ, ông David R.Hawkins (1927–2012), đã chứng minh được mối liên hệ mật thiết giữa bệnh tật của con người và những suy giảm năng lượng trong cơ thể, đến từ những tư tưởng tiêu cực. Kết quả nghiên cứu được ông trình bày trong cuốn sách bán chạy nhất của mình- “Power vs Force – Trường năng lượng và những nhân tố quyết định tinh thần, sức khỏe con người”.", "Nhà Xuất Bản Tổng Hợp");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Từ Tốt Đến Vĩ Đại",17,77100,33,115075, "https://salt.tikicdn.com/cache/280x280/media/catalog/product/n/x/nxbtre_full_06372017_103735.u547.d20170117.t105220.139884.jpg
","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Jim Collins cùng nhóm nghiên cứu đã miệt mài nghiên cứu những công ty có bước nhảy vọt và bền vững để rút ra những kết luận sát sườn, những yếu tố cần kíp để đưa công ty từ tốt đến vĩ đại. Đó là những yếu tố khả năng lãnh đạo, con người, văn hóa, kỷ luật, công nghệ… Những yếu tố này được nhóm nghiên cứu xem xét tỉ mỉ và kiểm chứng cụ thể qua 11 công ty nhảy vọt lên vĩ đại. Mỗi kết luận của nhóm nghiên cứu đều hữu ích, vượt thời gian, ý nghĩa vô cùng to lớn đối với mọi lãnh đạo và quản lý ở mọi loại hình công ty (từ công ty có nền tảng và xuất phát tốt đến những công ty mới khởi nghiệp), và mọi lĩnh vực ngành nghề. Đây là cuốn sách nên đọc đối với bất kỳ lãnh đạo hay quản lý nào!", "NXB Trẻ");

--insert into product(name, categoryId, cost, discount, value, images, shortDescription, description, production)  values("Sống Thực Tế Giữa Đời Thực Dụng
",10,65600,33,97910, "https://salt.tikicdn.com/cache/280x280/ts/product/25/d6/2c/f88080bba78a779fb78e1b76b73a9813.jpg https://salt.tikicdn.com/ts/upload/51/ac/cc/528e80fe3f464f910174e2fdf8887b6f.png","Bạn hãy NHẬP ĐỊA CHỈ nhận hàng để được dự báo thời gian & chi phí giao hàng một cách chính xác nhất.","Con người muốn trưởng thành đều phải trải qua ba lần lột xác “phá kén hóa bướm”. Lần đầu tiên là khi nhận ra mình không phải trung tâm thế giới. Lần thứ hai là khi phát hiện ra dù cố gắng đến đâu vẫn có những việc cảm thấy thật bất lực. Lần thứ ba là khi biết rõ có những việc bản thân không thể làm được nhưng vẫn cố tranh đấu đến cùng.

Trưởng thành là khi chúng ta hiểu ra rằng, không thể sống quá thật thà, quá trong sáng giữa cuộc đời đầy biến cố này. Thay vì kêu than “Thế giới này thực tế đến thực dụng!”, sao bạn không tự hỏi “Thực tế có gì không tốt?” Ít nhất, thực tế sẽ giúp bạn mạnh mẽ hơn, bản lĩnh hơn, dạy bạn cách vượt qua nghịch cảnh, trung thực với chính mình.

Khi bạn chưa đủ mạnh mẽ, cơ hội dù là nhỏ nhất cũng không đến với bạn. Khi bạn đủ tài giỏi, bạn chẳng thể ngăn nổi hàng vạn cơ hội đến với mình, mọi thứ bạn muốn đều chủ động chạy về phía bạn.

Thế giới này làm gì có đưa than ngày tuyết rơi, chỉ có dệt hoa lên gấm thôi. Bạn muốn được người khác dệt hoa lên gấm, trước tiên bạn phải trở thành gấm đã.", "Nhà Xuất Bản Dân Trí");


         */
    }

}

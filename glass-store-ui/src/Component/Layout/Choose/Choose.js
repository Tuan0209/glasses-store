import React from 'react';
import './Choose.scss';
import Footer from '../Footer';
import Header from '../Header';

function Choose() {
    return (
        <>
            <Header />
            <div className="paragraph-container">
                <div>
                    <h1 class="bold-heading">Cách chọn size kính vừa mặt online chỉ với 3 mẹo đơn giản</h1>
                    <p>Cũng giống như các loại phụ kiện khác, gọng kính mắt cũng có kích thước tương ứng với từng hình
                        dạng khuôn mặt. Tuy nhiên, ngày nay vẫn còn một số người chưa biết cách chọn kính có kích thước
                        phù hợp với hình dáng khuôn mặt của mình. Vậy cách chọn size kính như thế nào mới chính xác? Hãy
                        cùng hệ thống Matkinhtamduc.com tìm hiểu ngay dưới bài viết này!</p>
                    <h2 className="bold-heading">Cách đọc các thông số ghi trên thân kính như thế nào?</h2>
                    <p>Đối với mỗi loại kính, các thông số như màu sắc, kích thước, tên,… của mắt kính đều được in hoặc
                        khắc trên mắt kính. Các thông số này giúp phân biệt các loại kính với nhau và là đặc trưng của
                        kính.</p>
                    <p>Các thông số của kính được hiển thị ở 3 chỉ số:</p>
                    <ol>
                        <li><span class="bold-dot">•</span>Chỉ số chiều rộng ống kính</li>
                        <li><span class="bold-dot">•</span>Chỉ số chiều rộng bóng</li>
                        <li><span class="bold-dot">•</span>Chỉ số độ dài ngã ba</li>
                    </ol>
                    <p><a href="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-1.jpg">
                        <img src="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-1.jpg"
                             alt="Mô tả ảnh" />
                    </a></p>


                    <p>Cách đọc các thông số ghi trên thân kính khá đơn giản. Bạn có thể nhìn thấy một chuỗi số được in
                        trên càng kính phía bên trong, ví dụ mắt kính Gucci có các thông số như sau:</p>
                    <ul>
                        <li><span class="bold-dot">•</span> Mã sản phẩm có tên là kính Gucci</li>


                        <li><span class="bold-dot">•</span>3065: Số màu sắc của kính.</li>
                        <li><span class="bold-dot">•</span>52: là kích thước của chiều rộng của mắt kính có thông số kỹ
                            thuật hai chữ số, nằm trong
                            khoảng từ 40-62mm, trước hình vuông.
                        </li>
                        <li><span class="bold-dot">•</span>20: gọi là cầu thấu kính (độ dài cầu giữa hai thấu kính).
                            Kính có hai chữ số và có phạm vi
                            14-24mm và nằm phía sau hình vuông.
                        </li>
                        <li><span class="bold-dot">•</span>145: Gọi là kích thước càng kính, dao động từ 120-150mm.</li>
                    </ul>
                    <p>Mỗi mắt kính đều có những thông số riêng, vì vậy bạn nên tìm hiểu và có phương pháp chọn kính phù
                        hợp với khuôn mặt của mình, đồng thời nên kiểm tra thông số để tránh mua phải hàng giả lưu hành
                        trên thị trường.</p>
                    <h2 className="bold-heading"><span id="h">Cách đo khuôn ặt bằng thước dây</span></h2>
                    <p>Các bước đo kích thước khuôn mặt như sau:</p>
                    <ol>
                        <li>
                            <span class="bold-dot">•</span><strong>Bước 1:</strong> Đo phần rộng nhất của trán. Phần
                            rộng nhất của trán thường nằm giữa
                            lông mày và đường chân tóc phía trên trán. Bạn lấy thước dây từ thái dương bên phải sang
                            thái dương bên trái và ghi lại kết quả.
                        </li>
                        <li>
                            <span class="bold-dot">•</span><strong>Bước 2:</strong> Đo gò má. Khi chọn kính, độ rộng của
                            gò má đặc biệt quan trọng. Nếu
                            tỷ lệ này không được đo lường chính xác sẽ dẫn đến việc xác định sai hình dạng khuôn mặt.
                            Bạn tìm điểm cao nhất của xương gò má, sau đó kéo dây từ điểm cao nhất của xương gò má phải
                            đến điểm cao nhất của xương gò má trái và ghi lại số đo này.
                        </li>

                        <p><a
                            href="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-2-711x400.jpg">
                            <img
                                src="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-2-711x400.jpg"
                                alt="Đo mặt bằng thuoc day" />
                        </a></p>
                        <li>
                            <span class="bold-dot">•</span><strong>Bước 3:</strong> Đo từ góc cằm đến đỉnh cằm. Bạn nhân
                            đôi để xác định độ dài cằm
                            bằng cách kéo thước dây từ khóe cằm dưới tai đến đỉnh cằm.
                        </li>
                        <li>
                            <span class="bold-dot">•</span><strong>Bước 4:</strong> Đo chiều dài khuôn mặt. Chiều dài
                            của khuôn mặt được đo bằng khoảng
                            cách từ chân tóc chính giữa đến đỉnh cằm.
                        </li>
                        <li>
                            <span class="bold-dot">•</span><strong>Bước 5:</strong> Tổng hợp số đo và xác định hình dáng
                            khuôn mặt. Bạn so sánh 4 chỉ
                            số đo được ở bước trước để ước tính kích thước khuôn mặt của mình.
                        </li>
                    </ol>
                    <h2 className="bold-heading">Cách chọn size kính theo chiều dài khuôn mặt</h2>
                    <p>Trong thiết kế của kính mắt, phần càng mắt kính được coi là bộ phận quan trọng nhất. Vì bộ phận
                        này đóng vai trò như một giá đỡ, luôn ở bên tai người dùng.</p>
                    <p>Càng kính được coi là bộ phận quan trọng nhất trong thiết kế mắt kính vì chúng là giá đỡ và luôn
                        nằm yên trên tai của bạn.</p>
                    <p>Thông thường, nó có kích thước từ 120 đến 150 mm. Và có 3 kích thước cơ bản gồm: 135mm, 140mm và
                        145mm. Kính của bạn càng rộng, thái dương của bạn càng lớn. Lựa chọn size kính chuẩn như
                        sau:</p>
                    <ul>
                        <li><span class="bold-dot">•</span>Chiều rộng tổng thể cao nên chọn loại kính có chiều dài
                            khoảng 145mm trở lên.
                        </li>
                        <li><span class="bold-dot">•</span>Chiều rộng tổng thể của đầu nhỏ nên bạn hãy chọn kính có
                            chiều dài khoảng 135 – 140mm.
                        </li>
                    </ul>
                    <h2 className="bold-heading">Chọn khung phù hợp với hình dạng khuôn mặt của bạn</h2>

                    <p>Theo các chuyên gia, có 6 hình dạng cơ bản của khuôn mặt người, tương ứng với 8 loại khung
                        kính.</p>
                    <p><a href="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-5-622x400.jpg">
                        <img
                            src="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-5-622x400.jpg"
                            alt="Chon khung kinh" />
                    </a></p>
                    <h3 className="bold-heading">Mặt tròn</h3>
                    <p>Mặt tròn có chiều dài và chiều rộng gần bằng nhau. Trán tròn và cân đối, hai góc hàm cũng tròn
                        trịa.</p>
                    <p><span class="bold-dot">•</span><strong>Nữ:</strong> Phù hợp với gọng chữ nhật, gọng vuông hoặc
                        gọng tròn.</p>
                    <p><span class="bold-dot">•</span><strong>Nam:</strong> Phù hợp với gọng kính hình chữ nhật, vuông
                        hoặc phi công.</p>
                    <p>Phụ nữ và nam giới có khuôn mặt tròn không nên chọn gọng kính quá nhỏ, gọng hình bầu dục hoặc
                        gọng Browline.</p>
                    <h3 className="bold-heading">Khuôn mặt vuông</h3>
                    <p>Một khuôn mặt vuông có chiều dài và chiều rộng gần bằng nhau. Cằm góc cạnh và vầng trán vuông
                        rộng là đặc điểm nổi bật của khuôn mặt vuông.</p>
                    <p><span class="bold-dot">•</span><strong>Nữ:</strong> Phù hợp với gọng Browline, khung mắt mèo hoặc
                        gọng tròn. Phụ nữ có khuôn mặt
                        vuông nên tránh chọn gọng kính hình chữ nhật.</p>
                    <p><span class="bold-dot">•</span><strong>Nam:</strong> Nên dùng gọng Browline, hình bầu dục hoặc
                        hình chữ nhật. Nam giới có khuôn
                        mặt vuông nên tránh gọng kính quá nhỏ so với mặt.</p>

                    <h3 className="bold-heading">Mặt kim cương</h3>
                    <p>Khuôn mặt hình kim cương có xương gò má nổi bật, vầng trán hẹp và cằm góc cạnh.</p>
                    <p><span class="bold-dot">•</span><strong>Nữ:</strong> Có hình bầu dục, tròn hoặc mắt mèo. Phụ nữ có
                        khuôn mặt kim cương nên tránh
                        những chiếc gọng kính hình vuông hoặc hình chữ nhật.</p>
                    <p><span class="bold-dot">•</span><strong>Nam giới:</strong> Phù hợp với gọng kính hình bầu dục,
                        tròn hoặc Browline. Những người
                        đàn ông có khuôn mặt kim cương nên tránh những chiếc gọng kính hình vuông hoặc hình chữ nhật.
                    </p>

                    <h3 className="bold-heading">Mặt trái tim</h3>
                    <p>Khuôn mặt hình trái tim có trán rộng, cằm hẹp và gò má nổi bật.</p>
                    <p><span class="bold-dot">•</span><strong>Nữ:</strong> Đối với khung hình chữ nhật hoặc hình tròn
                        hoặc hình đa giác. Phụ nữ có
                        khuôn mặt trái tim nên tránh những chiếc gọng hình vuông, hình bầu dục hoặc chân mày.</p>
                    <p><span class="bold-dot">•</span><strong>Nam:</strong> Đối với gọng kính hình chữ nhật hoặc tròn
                        hoặc phi công. Những người đàn
                        ông có khuôn mặt hình trái tim nên tránh những khung hình vuông, trái xoan hoặc Browline.</p>
                    <h3 className="bold-heading">Mặt quả lê</h3>
                    <p>Khuôn mặt hình quả lê có đường viền hàm rộng hơn, xương gò má kém nổi bật và trán hẹp hơn.</p>
                    <p><span class="bold-dot">•</span><strong>Phụ nữ:</strong> Phù hợp với Browline, hình bầu dục và
                        gọng kính phi công. Phụ nữ có
                        khuôn mặt hình quả lê nên tránh gọng kính vuông và tròn.</p>
                    <p><span class="bold-dot">•</span><strong>Đàn ông:</strong> Hoàn hảo cho Browline, hình bầu dục và
                        gọng kính phi công. Những người
                        đàn ông có khuôn mặt hình quả lê nên tránh những chiếc gọng kính vuông và tròn.</p>
                    <p><a href="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-6-711x400.jpg">
                        <img
                            src="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-6-711x400.jpg"
                            alt="Mat trai le" />
                    </a></p>

                    <h3 className="bold-heading">Khuôn mặt trái xoan</h3>
                    <p>Khuôn mặt trái xoan với phần cằm tròn, hơi cong, hẹp hơn trán và rất cân đối.</p>
                    <p><span class="bold-dot">•</span><strong>Nữ:</strong> Phù hợp với khung hình chữ nhật, hình vuông
                        hoặc hình phi công.</p>
                    <p><span class="bold-dot">•</span><strong>Nam:</strong> Dùng cho gọng kính hình chữ nhật, vuông hoặc
                        gọng Browline.</p>
                    <p>Nói chung, những người có khuôn mặt trái xoan, cả nam và nữ đều có một vẻ đẹp tự nhiên tuyệt vời.
                        Với khuôn mặt này, bạn có thể tự tin đeo bất kỳ gọng kính nào mà mình thích. Bạn chỉ nên tránh
                        chọn những gọng kính quá to so với khuôn mặt của bạn.</p>

                    <h2 className="bold-heading">Cách chọn size kính theo các tỷ lệ phổ biến hiện nay</h2>
                    <p>Hình dạng khuôn mặt của bạn thường có ba thông số khi chọn kích cỡ kính: nhỏ, vừa và lớn. Thông
                        số này cũng chính là kích thước của kính được dập nổi hoặc dập chìm trên kính để dễ dàng nhận
                        biết. Cách tính size kính mắt như sau:</p>

                    <h2 className="bold-heading">Kích thước nhỏ</h2>
                    <ul>

                        <li><span class="bold-dot">•</span>Chiều rộng mắt kính: 42-48mm</li>
                        <li><span class="bold-dot">•</span>Cầu kính: 15-18 mm</li>
                        <li><span class="bold-dot">•</span>Càng kính mắt: &lt;140 mm</li>
                    </ul>

                    <h2 className="bold-heading">Trung bình</h2>
                    <ul>
                        <li><span class="bold-dot">•</span>Chiều rộng mắt kính: 48-52mm</li>
                        <li><span class="bold-dot">•</span>Cầu kính: 18-20 mm</li>
                        <li><span class="bold-dot">•</span>Càng kính: 140-145 mm</li>
                    </ul>

                    <h2 className="bold-heading">Kích thước lớn</h2>
                    <ul>
                        <li><span class="bold-dot">•</span>Chiều rộng mắt kính: &gt; 52mm</li>
                        <li><span class="bold-dot">•</span>Cầu kính: 20-22 mm</li>
                        <li><span class="bold-dot">•</span>Càng kính: &gt; 145mm</li>
                    </ul>
                    <h2 className="bold-heading">Size kính nào phổ biến nhất hiện nay?</h2>
                    <p>Bạn nên thực hiện cách chọn size kính phù hợp nhất với hình dáng khuôn mặt của mình, không nên
                        chọn kính quá lỏng hoặc quá chật sẽ gây đau nhức vùng thái dương và sống mũi. Dưới đây là một số
                        size mắt kính thông dụng:</p>
                    <ul>
                        <li><span class="bold-dot">•</span><strong>Nhỏ:</strong> 54mm – 55mm (thường gặp ở các cỡ kính
                            RayBan, cỡ nhỏ nhất thuộc dòng
                            Aviator)
                        </li>
                        <li><span class="bold-dot">•</span><strong>Trung bình:</strong> 56mm – 58mm (phổ biến ở cỡ kính
                            Gentle Monster)
                        </li>
                        <li><span class="bold-dot">•</span><strong>Lớn:</strong> 62mm</li>
                    </ul>
                    <p><a href="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-7-733x400.jpg">
                        <img
                            src="https://matkinhtamduc.com/wp-content/uploads/2022/06/cach-chon-size-kinh-7-733x400.jpg"
                            alt="Kich thuoc kinh" />
                    </a></p>

                    <h2 className="bold-heading">Lưu ý gì khi áp dụng cách chọn size kính?</h2>
                    <p>Để chọn được chiếc kính “đúng chuẩn”, bạn nên chú ý những điểm sau:</p>
                    <ul>
                        <li><span className="bold-dot">•</span>Kích thước kính > 52mm, thường là kính râm cận và kính
                            mát là
                            chủ yếu.
                        </li>
                        <li><span className="bold-dot">•</span>Chiều rộng cầu kính từ 20-24 mm.</li>
                        <li><span className="bold-dot">•</span>Chiều dài càng kính thường trong phạm vi kích thước /
                            chiều
                            dài từ 120-150mm.
                        </li>
                        <li><span className="bold-dot">•</span>Chọn kích thước kính, thông số cầu và khung phù hợp để
                            tránh
                            tình trạng quá chật hoặc quá
                            rộng.
                        </li>
                        <li><span className="bold-dot">•</span>Gọng kính phù hợp có thể giúp bạn tự tin và khuôn mặt trông cân đối, hài hòa. Hỗ trợ che đi những
                            khuyết điểm khiến bạn tự ti.
                        </li>
                    </ul>



                    <p>Hi vọng bài viết trên đã cung cấp đầy đủ thông tin về thông số cách đo size kính cận cũng như
                        cách chọn size kính mắt cho bạn. Điều này giúp bạn dễ dàng chọn cho mình chiếc kính phù hợp cho
                        chính mình. Nếu bạn đang không biết cách chọn kính mắt phù hợp hoặc muốn mua kính mắt chính hãng
                        chất lượng cao, hãy đến với địa chỉ cắt kính cận uy tín tại EyeCouture-Store. Nhanh tay
                        chọn cho mình mẫu kính mắt thời trang phù hợp nhất và liên hệ với chúng tôi qua hotline để được tư
                        vấn và hướng dẫn mua hàng uy tín nhất.</p>

                </div>


            </div>
            <Footer />
        </>


    );


}


export default Choose;
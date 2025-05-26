import './footer.scss';
import { BsFacebook, BsInstagram } from 'react-icons/bs';
import { AiFillTwitterCircle, AiFillLinkedin } from 'react-icons/ai';
function Footer() {
    return (
        <footer className="footer">
            <div className="container">
                <div className="row">
                    <div className="footer-col">
                        <h4>Công ty</h4>
                        <ul>
                            <li>
                                <a href="!#">Về chúng tôi</a>
                            </li>
                            <li>
                                <a href="!#">Dịch vụ của chúng tôi</a>
                            </li>
                            <li>
                                <a href="!#">Chính sách bảo mật</a>
                            </li>
                            <li>
                                <a href="!#">Chương trình liên kết</a>
                            </li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>Giúp đỡ</h4>
                        <ul>
                            <li>
                                <a href="!#">FAQ</a>
                            </li>
                            <li>
                                <a href="!#">Mua sắm</a>
                            </li>
                            <li>
                                <a href="!#">Đổi trả hàng</a>
                            </li>
                            <li>
                                <a href="!#">Tình trạng đơn hàng</a>
                            </li>
                            <li>
                                <a href="!#">Lựa chọn thanh toán</a>
                            </li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>Cửa hàng trực tuyến</h4>
                        <ul>
                            <li>
                                <a href="!#">Hoodie</a>
                            </li>
                            <li>
                                <a href="!#">Sweater</a>
                            </li>
                        </ul>
                    </div>
                    <div className="footer-col">
                        <h4>Theo dõi chúng tôi</h4>
                        <div className="social-links">
                            <a href="!#">
                                <BsFacebook />
                            </a>
                            <a href="!#">
                                <AiFillTwitterCircle />
                            </a>
                            <a href="!#">
                                <BsInstagram />
                            </a>
                            <a href="!#">
                                <AiFillLinkedin />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    );
}

export default Footer;

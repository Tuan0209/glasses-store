import { styled } from 'styled-components';
const ImgWrap = styled.div`
    & img {
        width: 300px;
        height: 400px;
        object-fit: cover;
        border-radius: 6px;
    }
`;
const Container = styled.section`
    display: flex;
    flex-wrap: wrap;
    margin-top: 20px;
    gap: 0 20px;
    padding: 30px;
    border-radius: 6px;
    background-color: var(--white-color);
    box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.06);
`;
const WrapItem = styled.div`
    flex: 1 0;
    min-width: 300px;
    flex-shrink: 0;
    & span {
        display: block;
        font-size: 1.6rem;
        color: var(--gray-color);
        margin: 10px 0 20px 0;
        width: 80%;
    }
`;
const Heading = styled.p`
    width: 50%;
    font-size: 3rem;
    margin-top: 20px;
    font-weight: 700;
    font-family: 'Satisfy', cursive;
    color: var(--primary-color);
`;
function BannerGrid() {
    return (
        <Container className="container">
            <WrapItem>
                <Heading>Our Finest Apparel Collection</Heading>
                <span>
                    Thể hiện sự tự tin với những thiết kế nói lên nhiều điều về phong cách của bạn.
                    Hãy để từng đường may và chất liệu kể câu chuyện về sự tinh tế và cá tính.
                    Khám phá bộ sưu tập áo cao cấp của chúng tôi và tìm chiếc hoàn hảo phản ánh con người bạn.
                </span>
                <ImgWrap>
                    <img
                        src="https://file.hstatic.net/1000317075/file/phoi-do-nam-cardina-don-gian__16_.jpeg_c6fec384d185492eacf5f96c895f5368.jpg"
                        alt="review-1"
                    />
                </ImgWrap>
            </WrapItem>
            <WrapItem>
                <ImgWrap>
                    <img
                        src="https://file.hstatic.net/1000317075/file/phoi-do-nam-cardina-don-gian__1_.jpeg_8c7f18f6b9e8428fb110224fec5047ec.jpg"
                        alt="review-1"
                    />
                </ImgWrap>

                <Heading>Glass Store</Heading>
                <span>
                    Trải nghiệm sự kết hợp giữa đổi mới và thoải mái với những thiết kế áo mới nhất của chúng tôi.
                    Từ những mẫu cổ điển vượt thời gian đến xu hướng hiện đại, chúng tôi luôn có sản phẩm phù hợp với mọi phong cách và dịp đặc biệt.
                    Nâng tầm phong cách thời trang của bạn cùng chúng tôi ngay hôm nay.
                </span>

            </WrapItem>
        </Container>
    );
}

export default BannerGrid;

import { NavBar } from '..';
import UserSection from './UserSection';
import { Logo, Header } from './header.style';
import { Link } from 'react-router-dom';
import SearchBar from '~/Component/Layout/Search/SearchBar.jsx';
function HeaderMain() {
    return (
        <Header>
            <div className="container">
                <Logo>
                    <Link to="/">
                        <img src="/logo.png" alt="logo" />
                    </Link>
                </Logo>
                <NavBar />

                <UserSection>
                    <SearchBar />
                </UserSection>
            </div>
        </Header>
    );
}

export default HeaderMain;

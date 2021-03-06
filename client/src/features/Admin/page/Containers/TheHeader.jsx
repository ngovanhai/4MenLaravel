import React from 'react';
import PropTypes from 'prop-types';
import { Layout, Menu } from 'antd';

import {
    CHeader,
    CToggler,
    CHeaderBrand,
    CHeaderNav,
    CHeaderNavItem,
    CHeaderNavLink,
    CSubheader,
    CBreadcrumbRouter,
    CLink
} from '@coreui/react'
import CIcon from '@coreui/icons-react'
import userApi from 'api/useAPI';
import { useHistory } from 'react-router-dom';



TheHeader.propTypes = {

};

function TheHeader(props) {
    const history = useHistory()
    const logout = async () => {
        localStorage.removeItem('firstLogin')
        localStorage.removeItem('token')
        await userApi.logout();
        history.push('./');

    }
    const user =() =>{
        window.location.href = "/";
    }
    return (
        <div>
            <CHeader withSubheader>
                <CHeaderBrand className="mx-auto d-lg-none" to="/">
                    <CIcon name="logo" height="48" alt="Logo" />
                </CHeaderBrand>

                <CHeaderNav className="d-md-down-none mr-auto">
                    <CHeaderNavItem className="px-3" >
                        <CHeaderNavLink to="/">Dashboard</CHeaderNavLink>
                    </CHeaderNavItem>
                    <CHeaderNavItem className="px-3">
                        <CHeaderNavLink to="/">Users</CHeaderNavLink>
                    </CHeaderNavItem>
                    <CHeaderNavItem className="px-3">
                        <CHeaderNavLink>Settings</CHeaderNavLink>
                    </CHeaderNavItem>
                </CHeaderNav>


                <CSubheader className="px-3 justify-content-between">
                    <CBreadcrumbRouter
                        className="border-0 c-subheader-nav m-0 px-0 px-md-3"
                    //routes={routes}
                    />
                    <div className="d-md-down-none mfe-2 c-subheader-nav">
                        <CLink className="c-subheader-nav-link" href="#">
                            <CIcon name="cil-speech" alt="Settings" />
                        </CLink>
                        <CLink
                            className="c-subheader-nav-link"
                            aria-current="page"
                            onClick={logout}
                        >
                           <CHeaderNavLink to="/"  onClick={logout}>LOGOUT </CHeaderNavLink>
                        </CLink>
                        <CLink className="c-subheader-nav-link" href="#">
                            <CIcon name="cil-settings" alt="Settings"
                             onClick={user}
                            />&nbsp;User
                        </CLink>
                    </div>
                </CSubheader>
            </CHeader>
        </div>
    );
}

export default TheHeader;
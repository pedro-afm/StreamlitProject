import streamlit as st
import toml

config = toml.load("config.toml")

st.title("ccdaddaads")

st.write("App rodando dentro do docker")
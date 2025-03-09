# -*- coding: utf-8 -*-
"""
Created on Wed Feb 21 20:21:02 2024

@author: HP
"""

import pickle
import streamlit as st
from streamlit_option_menu import option_menu

park_model=pickle.load(open('C:/Users/HP/OneDrive/Desktop/mlown/saved models/Parkinsons_Model.pkl','rb'))

with st.sidebar:
    selected=option_menu('Multiple disease prediction system,',
                         ['parkinson prediction'],
                         default_index=0)
    
if selected == "Parkinsons Prediction":

    # page title
    st.title("Parkinson's Disease Prediction using ML")

    col1, col2, col3 = st.columns(3)

    with col1:
        fo = st.text_input('MDVP:Fo(Hz)')

    with col2:
        fhi = st.text_input('MDVP:Fhi(Hz)')

    with col3:
        flo = st.text_input('MDVP:Flo(Hz)')

    with col1:
        Jitter_percent = st.text_input('MDVP:Jitter(%)')

   
    with col2:
        RPDE = st.text_input('RPDE')

    with col3:
        DFA = st.text_input('DFA')

    with col1:
        spread2 = st.text_input('spread2')

    with col2:
        D2 = st.text_input('D2')

    with col3:
        PPE = st.text_input('PPE')

    # code for Prediction
    parkinsons_diagnosis = ''

    # creating a button for Prediction    
    if st.button("Parkinson's Test Result"):

        user_input = [fo, fhi, flo, Jitter_percent,RPDE, DFA, spread2, D2, PPE]

        user_input = [float(x) for x in user_input]

        parkinsons_prediction = park_model.predict([user_input])

        if parkinsons_prediction[0] == 1:
            parkinsons_diagnosis = "The person has Parkinson's disease"
        else:
            parkinsons_diagnosis = "The person does not have Parkinson's disease"

    st.success(parkinsons_diagnosis)
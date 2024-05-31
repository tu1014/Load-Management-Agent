#    This file was created by
#    MATLAB Deep Learning Toolbox Converter for TensorFlow Models.
#    2024-05-31 08:36:44

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

def create_model():
    input_1 = keras.Input(shape=(3,))
    fc_1 = layers.Dense(128, name="fc_1_")(input_1)
    relu_body = layers.ReLU()(fc_1)
    fc_body = layers.Dense(128, name="fc_body_")(relu_body)
    body_output = layers.ReLU()(fc_body)
    fc_mean = layers.Dense(1, name="fc_mean_")(body_output)
    fc_std = layers.Dense(1, name="fc_std_")(body_output)
    std = layers.ReLU()(fc_std)

    model = keras.Model(inputs=[input_1], outputs=[fc_mean, std])
    return model

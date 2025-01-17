﻿namespace Tensorflow.Keras.Losses;

public class BinaryCrossentropy : LossFunctionWrapper, ILossFunc
{
    float label_smoothing;
    public BinaryCrossentropy(
        bool from_logits = false,
        float label_smoothing = 0,
        string reduction = null,
        string name = null) :
        base(reduction: reduction,
             name: name == null ? "binary_crossentropy" : name, 
             from_logits: from_logits)
    {
        this.label_smoothing = label_smoothing;
    }


    public override Tensor Apply(Tensor y_true, Tensor y_pred, bool from_logits = false, int axis = -1)
    {
        var sum = keras.backend.binary_crossentropy(y_true, y_pred, from_logits: from_logits);
        return keras.backend.mean(sum, axis: axis);
    }
}

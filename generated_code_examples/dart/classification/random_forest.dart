List<double> score(List<double> input) {
    List<double> var0;
    if ((input[3]) <= (0.75)) {
        var0 = [1.0, 0.0, 0.0];
    } else {
        if ((input[2]) <= (4.75)) {
            var0 = [0.0, 1.0, 0.0];
        } else {
            if ((input[2]) <= (5.049999952316284)) {
                if ((input[3]) <= (1.75)) {
                    var0 = [0.0, 0.8333333333333334, 0.16666666666666666];
                } else {
                    var0 = [0.0, 0.08333333333333333, 0.9166666666666666];
                }
            } else {
                var0 = [0.0, 0.0, 1.0];
            }
        }
    }
    List<double> var1;
    if ((input[3]) <= (0.800000011920929)) {
        var1 = [1.0, 0.0, 0.0];
    } else {
        if ((input[0]) <= (6.25)) {
            if ((input[2]) <= (4.8500001430511475)) {
                var1 = [0.0, 0.9487179487179487, 0.05128205128205128];
            } else {
                var1 = [0.0, 0.0, 1.0];
            }
        } else {
            if ((input[3]) <= (1.550000011920929)) {
                var1 = [0.0, 0.8333333333333334, 0.16666666666666666];
            } else {
                var1 = [0.0, 0.02564102564102564, 0.9743589743589743];
            }
        }
    }
    return mulVectorNumber(addVectors(var0, var1), 0.5);
}
List<double> addVectors(List<double> v1, List<double> v2) {
    List<double> result = new List<double>.filled(v1.length, 0.0);
    for (int i = 0; i < v1.length; i++) {
        result[i] = v1[i] + v2[i];
    }
    return result;
}
List<double> mulVectorNumber(List<double> v1, double num) {
    List<double> result = new List<double>.filled(v1.length, 0.0);
    for (int i = 0; i < v1.length; i++) {
        result[i] = v1[i] * num;
    }
    return result;
}

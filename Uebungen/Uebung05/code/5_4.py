import numpy as np
import matplotlib.pyplot as plt

picture = np.array([[6, 48, 94, 33, 7],
                    [12, 36, 26, 71, 91],
                    [29, 17, 34, 45, 67],
                    [34, 55, 74, 1, 41],
                    [87, 14, 28, 61, 32]])

plt.imshow(picture, cmap='gray', vmax=99)
plt.savefig("image.pdf")
plt.figure()
plt.hist(np.ravel(picture), bins=np.arange(0, 110, 10))
plt.xticks(np.arange(0, 100, 10))
plt.grid()
plt.xlim([0, 100])
plt.savefig("histogram.pdf", bbox_inches='tight', pad_inches=0)
plt.figure()
#summenkurve
image_histogram, bins = np.histogram(picture.ravel(), 100, normed=True)
cdf = image_histogram.cumsum()
cdf = 100 * cdf / cdf[-1]
plt.plot(np.arange(0, 100), cdf)
plt.savefig('s-curve.pdf')
picture_equalized = np.interp(picture.ravel(), bins[:-1], cdf)
picture_equalized_shape = np.reshape(picture_equalized, picture.shape)
plt.figure()
plt.imshow(picture_equalized_shape, cmap='gray', vmax=99)
plt.savefig("image_normalized.png", bbox_inches='tight', pad_inches=0)
print(picture_equalized_shape)
plt.figure()
plt.hist(np.ravel(picture_equalized_shape), bins=np.arange(0, 110, 10))
plt.xticks(np.arange(0, 100, 10))
plt.grid()
plt.xlim([0, 100])
plt.savefig("hist_normalized.pdf", bbox_inches='tight', pad_inches=0)
plt.figure()
#summenkurve
image_histogram, bins = np.histogram(picture_equalized_shape.ravel(), 100, normed=True)
cdf = image_histogram.cumsum()
cdf = 100 * cdf / cdf[-1]
plt.plot(np.arange(0, 100), cdf)
plt.savefig('sumcurve_equalized.pdf', bbox_inches='tight', pad_inches=0)
plt.show()

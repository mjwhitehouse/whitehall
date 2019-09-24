bad_wlna_ids = [
    204864, 205325, 205335, 205623, 205679, 205842, 206306, 206432, 207104, 207108, 207114, 207475, 208015, 208251, 208880,
    209183, 209411, 209552, 210029, 210432, 210469, 210824, 211220, 211558, 211604, 211711, 212332, 212605, 212822, 213166,
    213311, 213523, 213586, 219638, 219640, 219974, 220256, 220474, 220477, 220887, 220958, 220977, 221393, 221587, 221753,
    221873, 221887, 221888, 222921, 222954, 222959, 223010, 223176, 223744, 223913, 224174, 224329, 224458, 224745, 224765,
    226833, 227056, 227192, 227350, 227356, 227363, 227450, 227595, 228323, 228363, 228530, 228553, 228554, 228556, 228824,
    230131, 230998, 231187, 231983, 234490, 234749, 234987, 235067, 235274, 235403, 235942, 237762, 237862, 237919, 237963,
    238390, 238513, 238652, 238686, 238694, 239062, 239069, 240221, 240231, 240777, 242361, 242379, 242535, 242536, 242902,
    243348, 243413, 243439, 243541, 243744, 244313, 244450, 244552, 244585, 244586, 244718, 245128, 245205, 245223, 245760,
    245778, 247973, 248093, 248299, 248537, 248542, 248799, 249093, 249251, 249402, 249441, 249625, 249707, 249708, 249732,
    250011, 251014, 253077, 253105, 253308, 253557, 253571, 253889, 253920, 254307, 254890, 254927, 255496, 255512, 255769,
    255984, 256352, 256726, 257409, 257438, 257880, 257944, 258803, 258995, 259247, 259280, 259409, 261414, 261475, 261501,
    261807, 262206, 262215, 262216, 262217, 274599, 275198, 275314, 275537, 276396, 277096, 277396, 277401, 277413, 277484,
    277772, 278202, 278222, 279018, 279317, 279974, 279975, 280018, 280225, 280414, 280441, 280495, 280636, 280895, 280937,
    282793, 283553, 283709, 284040, 284221, 284232, 284237, 284499, 284764, 285474, 285699, 286583, 287038, 287173, 287187,
    287256, 287777, 287857, 288659, 290181, 290199, 290527, 290608, 290973, 291115, 291540, 291586, 291644, 291740, 291983,
    292110, 292140, 292185, 292253, 292266, 293130, 294267, 294293, 295006, 295127, 296289, 296558, 296968, 297650, 297976,
    297985, 300864, 301183, 301492, 301569, 301795, 301863, 302173, 302224, 302290, 302791, 303423, 303426, 303854, 304235,
    304328, 304679, 305587, 305993, 306708, 306855, 306940, 309647, 309717, 310165, 310185, 310191, 310195, 310337, 310827,
    311065, 311338, 311514, 311570, 311581, 311733, 311743, 312703, 312882, 312934, 313100, 313232, 313391, 313401, 315783,
    316837, 317341, 317578, 317641, 317671, 317788, 318498, 318624, 318983, 319737, 319864, 320359, 321264, 321534, 321535,
    321864, 321984, 323006, 323204, 323668, 323676, 323677, 324082, 324631, 325324, 325712, 325728, 326629, 327210, 327225,
    328885, 329010, 329030, 329036, 329062, 331017, 331040, 331560, 331563, 331936, 331952, 332802, 332909, 333611, 333973,
    334288, 334876, 335632, 337126, 337389, 337646, 337877, 338222, 338270, 338277, 338278, 338355, 338695, 338942, 338967,
    339002, 339568, 340304, 340307, 340309, 340315, 340714, 340735, 341389, 342068, 342096, 342156, 342322, 342692, 343081,
    343083, 343635, 343641, 344092, 344789, 344860, 345975, 346004, 346080, 346660, 347056, 347149, 347152, 347178, 348184,
    349289, 349501, 349581, 349612, 349657, 350136, 350164, 351772, 352514, 355311, 355641, 357593, 357776, 358895, 358900,
    359015, 359022, 359112, 359708, 359733, 360039, 360053, 361633, 362343, 362842, 365196, 365201, 366119, 366153, 366773,
    367987, 368627, 369298, 369299, 369370, 369408, 369939, 370081, 370145, 370624, 371117, 371131, 371369, 371383, 371594,
    372151, 372658, 373167, 373808, 374620, 374736, 375009, 375675, 375679, 375693, 376482, 376690, 376978, 376981, 377170,
    377571, 379195, 380348, 380916, 380919, 381189, 381322, 381426, 381697, 381935, 386006, 386010, 386023, 386277, 386647,
    387444, 387621, 388569, 388717, 388729, 388895, 389693, 389696, 389807, 390507, 390642, 390912, 390992, 390994, 391032,
    391140, 392178, 392179, 392666, 392807, 392842, 392866, 393337, 393702, 393823, 393941, 393955, 394277, 394527, 394528,
    396504, 396508, 396730, 396925, 397022, 397987, 397988, 397991, 397993, 397998, 398485, 399341, 399342, 399982, 400289,
    400314, 400318, 400534, 402175, 402211, 402925, 402997, 403897, 404915, 404989, 405496, 405508, 405522, 406275, 406968,
    408144, 408145, 408334, 408440, 409155, 410132, 410837, 411931, 412402, 412482, 412488, 413209, 413608, 413826, 413894,
    413911, 414384, 415949, 416736, 416761, 417713, 418230, 418262, 420010, 420148, 420149, 420150, 420156, 420162, 420612,
    420698, 421973, 422252, 422429, 423148, 424023, 424029, 425066, 425288, 426853, 427332, 427656, 427832, 428158, 429463,
    430449, 431058, 431921, 431961, 433303, 434872, 434873, 434955, 435910, 436672, 437467, 438081, 441054, 441066, 442425,
    445094, 446429, 447572, 449159, 450792, 452087, 452088, 452541, 452681, 452738, 453702, 454057, 455921, 456024, 457643,
    457663, 458876, 459156, 460146, 460202, 460711, 460734, 461409, 463060, 464240, 464287, 464290, 465429, 465681, 465926,
    466154, 466226, 466834, 468418, 468420, 468845, 470866, 471287, 471374, 471893, 473741, 473982, 474375, 474376, 474757,
    474913, 475101, 475379, 475385, 475392, 475409, 475978, 476180, 476546, 477112, 477645, 479780, 480321, 480831, 481233,
    481334, 481547, 481825, 482931, 483035, 483618, 486061, 486603, 488100, 488113, 491214, 491544, 491547, 491720, 491930,
    492421, 492687, 492701, 492720, 493074, 494571, 495671, 496427, 496450, 496905, 497347, 497348, 497757, 497787, 498264,
    498982, 499503, 499508, 499604, 499697, 499917, 501028, 502370, 502538, 503454, 503473, 503587, 503631, 505040, 505570,
    505571, 506122, 508833, 508862, 508951, 509344, 509616, 509888, 509896, 510004, 511094, 511973, 511978, 512156, 512456,
    518832, 530744, 530785
  ]
wlnas = Edition.where(id: bad_wlna_ids)

wlnas.each do |wlna|
  if wlna.available_locales.include?(:en) && wlna.primary_locale != "en"
    wlna.translations.where(locale: "en").delete_all
  end
end

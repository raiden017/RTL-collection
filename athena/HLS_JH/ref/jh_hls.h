/* *
 * @file       jh_hls.h
 * @brief      Header file of HLS-based JH implementation in C
 * @project    ARC-2015 HLS SHA-3
 * @author     Ekawat (ice) Homsirikamol
 * @version    1.0
 * @copyright  Copyright (c) 2014 Cryptographic Engineering Research Group
 *             ECE Department, George Mason University Fairfax, VA, U.S.A.
 *             All rights Reserved.
 * @license    This project is released under the GNU Public License.
 *             The license and distribution terms for this file may be
 *             found in the file LICENSE in this distribution or at
 *             http://www.gnu.org/licenses/gpl-3.0.txt
 * @note       This is publicly available encryption source code that falls
 *             under the License Exception TSU (Technology and software-
 *             —unrestricted)
 */

#include "ap_cint.h"

#ifndef _JH_HLS
#define _JH_HLS

const static uint4 S0_0[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_1[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_2[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_3[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_4[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_5[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_6[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_7[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_8[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_9[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_10[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_11[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_12[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_13[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_14[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_15[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_16[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_17[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_18[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_19[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_20[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_21[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_22[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_23[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_24[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_25[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_26[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_27[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_28[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_29[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_30[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_31[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_32[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_33[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_34[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_35[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_36[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_37[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_38[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_39[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_40[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_41[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_42[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_43[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_44[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_45[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_46[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_47[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_48[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_49[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_50[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_51[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_52[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_53[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_54[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_55[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_56[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_57[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_58[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_59[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_60[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_61[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_62[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_63[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_64[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_65[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_66[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_67[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_68[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_69[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_70[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_71[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_72[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_73[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_74[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_75[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_76[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_77[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_78[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_79[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_80[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_81[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_82[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_83[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_84[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_85[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_86[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_87[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_88[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_89[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_90[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_91[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_92[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_93[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_94[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_95[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_96[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_97[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_98[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_99[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_100[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_101[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_102[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_103[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_104[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_105[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_106[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_107[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_108[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_109[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_110[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_111[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_112[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_113[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_114[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_115[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_116[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_117[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_118[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_119[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_120[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_121[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_122[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_123[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_124[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_125[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_126[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_127[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_128[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_129[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_130[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_131[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_132[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_133[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_134[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_135[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_136[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_137[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_138[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_139[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_140[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_141[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_142[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_143[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_144[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_145[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_146[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_147[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_148[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_149[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_150[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_151[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_152[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_153[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_154[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_155[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_156[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_157[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_158[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_159[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_160[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_161[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_162[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_163[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_164[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_165[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_166[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_167[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_168[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_169[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_170[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_171[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_172[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_173[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_174[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_175[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_176[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_177[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_178[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_179[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_180[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_181[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_182[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_183[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_184[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_185[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_186[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_187[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_188[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_189[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_190[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_191[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_192[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_193[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_194[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_195[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_196[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_197[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_198[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_199[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_200[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_201[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_202[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_203[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_204[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_205[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_206[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_207[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_208[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_209[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_210[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_211[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_212[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_213[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_214[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_215[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_216[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_217[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_218[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_219[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_220[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_221[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_222[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_223[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_224[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_225[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_226[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_227[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_228[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_229[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_230[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_231[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_232[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_233[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_234[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_235[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_236[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_237[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_238[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_239[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_240[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_241[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_242[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_243[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_244[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_245[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_246[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_247[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_248[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_249[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_250[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_251[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_252[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_253[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_254[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S0_255[16] = {9,0,4,11,13,12,3,15,1,10,2,6,7,5,8,14};
const static uint4 S1_0[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_1[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_2[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_3[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_4[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_5[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_6[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_7[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_8[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_9[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_10[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_11[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_12[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_13[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_14[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_15[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_16[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_17[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_18[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_19[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_20[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_21[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_22[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_23[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_24[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_25[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_26[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_27[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_28[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_29[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_30[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_31[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_32[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_33[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_34[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_35[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_36[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_37[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_38[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_39[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_40[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_41[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_42[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_43[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_44[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_45[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_46[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_47[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_48[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_49[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_50[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_51[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_52[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_53[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_54[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_55[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_56[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_57[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_58[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_59[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_60[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_61[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_62[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_63[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_64[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_65[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_66[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_67[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_68[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_69[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_70[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_71[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_72[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_73[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_74[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_75[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_76[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_77[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_78[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_79[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_80[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_81[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_82[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_83[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_84[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_85[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_86[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_87[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_88[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_89[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_90[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_91[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_92[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_93[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_94[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_95[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_96[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_97[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_98[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_99[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_100[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_101[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_102[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_103[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_104[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_105[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_106[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_107[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_108[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_109[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_110[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_111[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_112[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_113[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_114[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_115[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_116[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_117[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_118[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_119[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_120[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_121[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_122[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_123[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_124[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_125[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_126[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_127[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_128[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_129[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_130[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_131[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_132[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_133[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_134[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_135[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_136[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_137[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_138[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_139[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_140[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_141[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_142[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_143[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_144[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_145[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_146[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_147[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_148[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_149[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_150[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_151[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_152[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_153[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_154[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_155[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_156[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_157[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_158[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_159[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_160[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_161[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_162[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_163[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_164[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_165[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_166[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_167[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_168[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_169[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_170[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_171[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_172[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_173[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_174[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_175[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_176[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_177[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_178[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_179[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_180[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_181[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_182[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_183[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_184[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_185[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_186[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_187[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_188[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_189[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_190[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_191[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_192[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_193[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_194[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_195[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_196[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_197[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_198[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_199[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_200[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_201[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_202[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_203[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_204[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_205[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_206[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_207[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_208[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_209[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_210[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_211[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_212[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_213[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_214[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_215[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_216[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_217[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_218[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_219[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_220[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_221[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_222[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_223[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_224[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_225[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_226[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_227[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_228[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_229[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_230[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_231[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_232[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_233[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_234[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_235[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_236[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_237[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_238[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_239[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_240[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_241[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_242[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_243[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_244[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_245[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_246[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_247[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_248[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_249[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_250[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_251[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_252[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_253[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_254[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};
const static uint4 S1_255[16] = {3,12,6,13,5,7,1,9,15,2,0,4,11,10,14,8};

#endif
.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -119
test eax, 424329527
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 29
xor dl, -43
and rsi, 24
and dx, 3
or al, 74
jmp .bb_0.1
.bb_0.1:
or dl, dl
or sil, dil
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
xor cx, -18
and al, 49
test rax, -2004802425
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

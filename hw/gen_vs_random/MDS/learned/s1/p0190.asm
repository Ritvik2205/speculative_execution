.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, si
xor sil, -126
test al, cl
or bl, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
xor cl, 24
or al, -24
test dl, -85
or al, 25
xor ax, 23633
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
xor rdx, -59
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
jmp .bb_0.2
.bb_0.2:
or al, -78
test edx, -1561252782
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

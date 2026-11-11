.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 27
test al, -56
and al, -68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 80
add al, 117
test edx, 1891691791
cmp cx, 55
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
test sil, 29
cmp al, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

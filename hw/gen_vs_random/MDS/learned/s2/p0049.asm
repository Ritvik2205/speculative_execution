.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
btc edi, 230
add dl, 59
and sil, sil
or bx, 31
xor rsi, -117
and ax, -16061
or al, 16
and al, -55
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
test cl, -18
jmp .bb_0.1
.bb_0.1:
or al, 25
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

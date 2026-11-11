.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
xor cl, 24
or al, -61
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 18
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 44
jmp .bb_0.2
.bb_0.2:
xor cl, al
and di, 91
and di, 91
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
btc ebx, 149
or sil, -49
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

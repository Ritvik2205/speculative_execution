.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -95
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xor rcx, 71
btc di, 233
not dil
xor sil, 110
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or ax, -14271
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
test dl, bl
not bl
bt ax, cx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

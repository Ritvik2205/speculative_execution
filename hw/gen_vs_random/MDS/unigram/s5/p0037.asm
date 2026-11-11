.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 89
test edx, -372470678
and dl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rsi, 25
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and bl, dil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
test sil, sil
xor sil, dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 65
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
xor rbx, 89
xor eax, esi
btr di, si
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

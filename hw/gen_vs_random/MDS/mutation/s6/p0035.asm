.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
bts rdi, 130
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test al, -7
and al, 84
bt dx, 228
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test rcx, -613256812
cmovl edx, esi
cmovnp di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and ebx, ebx
btr esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
xor cl, -13
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and sil, -56
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
cmovnp ax, dx
xor sil, -46
or cl, 39
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

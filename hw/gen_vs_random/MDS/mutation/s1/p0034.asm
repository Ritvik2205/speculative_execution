.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 228
test al, -7
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
test rcx, -613256812
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor al, 8
xor cl, 24
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and al, -55
cmovnp di, ax
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
btr esi, ecx
and ebx, ebx
cmovl edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

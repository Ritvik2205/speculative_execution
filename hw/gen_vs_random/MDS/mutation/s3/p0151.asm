.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
xor cl, -13
xor al, 8
cmovnp di, ax
xor al, cl
bts rdi, 130
and ebx, ebx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test al, 127
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
btr esi, ecx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
test rcx, -613256812
bt dx, 228
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
cmovl edx, esi
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

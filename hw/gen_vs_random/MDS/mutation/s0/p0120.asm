.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rcx, -613256812
and al, 49
bts rdi, 130
cmovl edx, esi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
test al, -81
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
bt dx, 228
and ebx, ebx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor cl, 24
btr esi, ecx
xor al, 34
cmovnp di, ax
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

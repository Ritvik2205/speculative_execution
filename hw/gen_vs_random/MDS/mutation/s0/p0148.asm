.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 130
test al, 127
cmovnp di, ax
test rcx, -613256812
xor al, 115
bt dx, 162
and al, -54
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
and ebx, ebx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
xor al, cl
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
btr esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
cmovl edx, esi
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

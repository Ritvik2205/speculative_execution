.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdi, 130
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
cmovnp di, ax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
bt dx, 162
xor cl, -13
cmovl edx, esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
test al, 91
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
xor al, cl
and ebx, ebx
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and al, 106
btr esi, ecx
test rcx, -613256812
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

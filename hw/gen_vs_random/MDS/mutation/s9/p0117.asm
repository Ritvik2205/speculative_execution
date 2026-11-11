.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 99
cmovnp di, ax
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
test rcx, -613256812
test al, 127
btr esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
bts rdi, 130
and al, 87
bt dx, 162
and ebx, ebx
cmovl edx, esi
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

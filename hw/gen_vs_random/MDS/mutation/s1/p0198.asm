.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
cmovnp di, ax
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
btr esi, ecx
and al, -103
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
bts rdi, 130
cmovl edx, esi
bt dx, 162
xor al, -19
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test al, 127
test rcx, -613256812
xor al, cl
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
and ebx, ebx
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

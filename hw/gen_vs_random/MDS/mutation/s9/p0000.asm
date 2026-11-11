.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, 162
xor al, -19
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
cmovl edx, esi
and ebx, ebx
xor al, cl
test al, -81
bts rdi, 130
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
xor cl, 83
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
btr esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rsi]
test rcx, -613256812
and al, -8
cmovnp di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

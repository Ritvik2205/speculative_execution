.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ecx, 8
xor rbx, 89
sub al, 11
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
test ax, -20900
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and dx, 60
and al, -54
test eax, -675944960
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
or al, 16
and cl, -71
or dil, 16
xor dl, 8
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 95
or rbx, -72
test rdi, 6
and rcx, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
bts dx, bx
cmovnle ax, di
and cx, -8
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
cmovnbe dx, ax
or rax, 1461812833
xor al, dl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 51
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 60
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
cmovnp rax, rdx
cmovnz rdi, rcx
cmovle rax, rbx
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

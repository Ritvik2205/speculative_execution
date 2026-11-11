.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, -77
sbb cl, bl
add dl, 52 # instrumentation
sets al
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 57
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
lea esi, qword ptr [rcx + rbx + 85]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
cmovp dx, ax
sub cl, -47
xchg rsi, rdx
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

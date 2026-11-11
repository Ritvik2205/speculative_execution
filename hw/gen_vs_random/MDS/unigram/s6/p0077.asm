.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, al
bts ecx, 3
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
or cl, 30
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 23
and bx, 69
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
jmp .bb_0.1
.bb_0.1:
cmovns rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
cmovl bx, cx
not rbx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 96
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
cmovnbe dx, ax
test rsi, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, rdx
btr di, si
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
btc cx, 66
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 74
or bx, ax
jmp .bb_0.1
.bb_0.1:
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
lea edx, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
lea rbx, qword ptr [rdx + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 45
add cl, -49 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

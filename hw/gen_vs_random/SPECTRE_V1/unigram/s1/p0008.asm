.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
lea rdi, qword ptr [rax + rdi + 67]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
cdq
xor bl, sil
xor bl, al
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
cdq
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mul bl
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
cmovnle rax, rdi
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 89
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

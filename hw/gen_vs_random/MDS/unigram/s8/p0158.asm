.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and bl, 121 # instrumentation
bt rcx, 14
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
btr edx, edx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
xor ax, 31969
xor eax, 571592471
xor dil, -3
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
test cl, 0
or di, 15
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

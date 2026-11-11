.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 30
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
cmovl ecx, ecx
and dl, -26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 12
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
bt eax, esi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
btc dx, bx
and rsi, 65
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
or eax, -927349615
and bl, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
or bl, 43
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

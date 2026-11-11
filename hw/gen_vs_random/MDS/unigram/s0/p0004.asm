.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
xor dl, al
test cl, 91
and edx, -44
or rcx, 54
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], -77
xor dl, -19
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
xor rdi, -9
cmovo ecx, eax
and cl, -15 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and bx, 9
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and dl, 60 # instrumentation
cmovnl edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

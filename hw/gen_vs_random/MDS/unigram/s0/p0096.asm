.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
btr rax, 209
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
or cl, 7
or bl, cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and ebx, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
test bl, al
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

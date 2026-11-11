.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
bts si, ax
cmovl ebx, eax
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
bts rsi, 206
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnp dx, cx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], si
and cl, dil
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
xor cx, -18
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmovnz ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

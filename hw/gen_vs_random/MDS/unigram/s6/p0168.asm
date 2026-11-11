.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 4
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
xor al, 115
cmovl edi, ebx
cmovnp ebx, ecx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 75
bts cx, 191
and rbx, 65
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
cmovns dx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
cmovz bx, cx
and al, dil
and rcx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

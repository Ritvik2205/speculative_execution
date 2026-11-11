.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
bt dx, ax
bt ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
bt rax, rdi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
and al, 33 # instrumentation
cmovnle ecx, eax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 56
jmp .bb_0.1
.bb_0.1:
and al, 73
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and cl, -49 # instrumentation
cmovno cx, si
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
xor dil, sil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

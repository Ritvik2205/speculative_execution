.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
cmovnb ecx, edx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
test bl, -114
cmovnbe rdx, rdx
or rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
test cl, -86
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 40
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdx], cx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and al, -33 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
cmovnl esi, ecx
cmovle rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

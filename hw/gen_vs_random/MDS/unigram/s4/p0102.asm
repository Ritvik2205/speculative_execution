.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, si
or rcx, 54
and dil, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and al, dil
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], ecx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
and ax, 27170
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
not dl
test rdx, rax
test cl, -18
or bx, 65
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
test ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

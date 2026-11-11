.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, di
and dil, 122 # instrumentation
cmovnbe edi, edx
or dl, dl
cmovle bx, bx
cmovz rcx, rdi
cmovnbe si, ax
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovz rcx, rbx
bt eax, 49
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 41
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rax
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
cmovnp ecx, esi
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
test si, 63
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

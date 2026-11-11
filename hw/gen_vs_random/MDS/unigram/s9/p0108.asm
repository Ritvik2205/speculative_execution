.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
cmovno edi, eax
cmovnp ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 21
test bl, bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
test cl, 54
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], -113
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and dl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
cmovnbe ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

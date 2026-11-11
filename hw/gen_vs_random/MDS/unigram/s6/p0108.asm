.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edi, 23
cmovnbe rcx, rbx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and cx, -2
and cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 34
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
test eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rdx, 1
cmovz edx, ebx
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

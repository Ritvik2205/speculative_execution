.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edi, esi
cmovo dx, di
or al, 30
or dil, 12
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and al, 84
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
bts edi, 248
cmovb di, si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
test ebx, edx
cmovle esi, ecx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

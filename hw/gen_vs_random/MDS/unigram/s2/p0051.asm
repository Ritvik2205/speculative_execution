.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 21 # instrumentation
cmovb ax, bx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
bt edi, 17
or eax, 1725503461
xor bx, 76
or dil, -41
bts di, 73
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
xor cx, -18
cmovp ecx, eax
cmovnp rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
test rdx, 17
or si, dx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
cmovnp ax, si
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
test edx, -372470678
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

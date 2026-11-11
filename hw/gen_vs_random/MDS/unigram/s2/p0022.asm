.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
cmovnb rax, rdi
not dil
xor rdx, -59
cmovnz rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test dil, sil
btr bx, dx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and dx, ax
btr bx, 188
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
not dl
and dil, -34 # instrumentation
cmovs rsi, rdi
cmovnle edx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

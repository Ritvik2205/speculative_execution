.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, -11
sub ax, 26007
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
sbb al, 92
btr esi, edx
sbb ax, -5921
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 73
add cl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rax
cmovnbe di, ax
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
or si, 64
cmovnz rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

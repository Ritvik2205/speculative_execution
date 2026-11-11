.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and cl, 11 # instrumentation
cmovp ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
cmovnb ecx, edx
xor dil, -124
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
btr bx, 188
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
test ax, 30932
xor ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
btr dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

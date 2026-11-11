.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
xor dil, -5
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
cmovnp dx, bx
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
btr dx, di
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and cl, 11 # instrumentation
cmovp ebx, edx
xor ebx, edx
cmovnb ecx, edx
test ax, 30932
btr bx, 188
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
or dl, 51
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
sub al, -1
bt eax, esi
inc rcx
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
mov cl, dil
xor rbx, rax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 99
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -119
btr eax, 55
imul ebx, edi
add bl, -5 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 1 # instrumentation
add dl, -93 # instrumentation
setnb dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

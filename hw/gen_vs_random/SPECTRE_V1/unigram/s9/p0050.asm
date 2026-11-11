.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 68
xor bl, sil
imul rdi
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
inc ax
xor cl, cl
setno al
loope .bb_0.1
jmp .exit_0
.bb_0.1:
add esi, 31
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
sub edi, ebx
not ax
not si
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
or dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

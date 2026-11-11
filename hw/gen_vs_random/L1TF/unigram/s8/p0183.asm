.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
adc cl, sil
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
cmp dl, bl
lea si, qword ptr [rax + rdx + 57]
cmovz rax, rbx
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and bl, bl
cwde
lea ebx, qword ptr [rcx + rdi + 92]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

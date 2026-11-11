.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
mul rdx
sub bl, dl
and si, 19
mov sil, dil
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
or rcx, rcx
and rdx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdx]
and bx, ax
xchg eax, edx
and rdi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
imul ax
movzx ebx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

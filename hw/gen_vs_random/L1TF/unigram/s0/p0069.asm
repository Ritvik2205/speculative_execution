.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add di, dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
mov dl, 26
or dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 97
sub ecx, 8
setz sil
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], ebx
sub sil, 45
lea si, qword ptr [rcx + rax + 26]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
mov dil, dl
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

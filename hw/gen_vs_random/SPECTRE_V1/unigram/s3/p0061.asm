.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
add sil, sil
movzx rax, dx
setz cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
cmovl si, di
cmovnz bx, si
and al, -23
cmp edx, 44
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, sil
test dil, -116
and dl, sil
cmp cl, 78
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
cmovnl ecx, edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

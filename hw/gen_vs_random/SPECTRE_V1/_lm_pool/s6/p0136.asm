.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 96
add dil, -75
sub al, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
sub sil, -18
add al, dl
sub bl, dil
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and al, -54
add sil, cl
sub al, dil
add al, -65
lea dx, qword ptr [rdi + rax + 71]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

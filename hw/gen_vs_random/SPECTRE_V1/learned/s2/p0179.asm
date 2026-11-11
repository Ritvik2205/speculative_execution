.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ebx, ax
cmp rcx, 97
imul ax, dx, 82
cmp eax, -240917296
xor cl, al
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
or cl, -98
js .bb_0.3
jmp .exit_0
.bb_0.3:
mov bl, sil
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

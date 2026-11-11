.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
sub al, sil
xor al, 54
and ax, 25351
and al, -23
sbb cl, 105
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdi, 75
mov bl, sil
sub bl, -6
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and cl, bl
sub cl, -21
cmp cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

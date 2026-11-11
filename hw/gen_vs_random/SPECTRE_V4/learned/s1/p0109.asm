.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
dec cl
cmp cl, al
or sil, -47
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
mov sil, dl
test bl, 87
add al, cl
sbb sil, -124
xor ax, -17712
sbb cl, al
and al, -1
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

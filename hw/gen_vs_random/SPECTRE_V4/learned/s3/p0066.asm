.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, 106
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
sbb cl, bl
movsx dx, al
sub bl, cl
or rcx, 51
cmp dil, cl
cmp sil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
or cl, dl
mov ax, 31802
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
cmp al, cl
adc dil, -17
or al, -16
sub bl, cl
and cl, -101
sub al, 59
cmp al, 109
sbb cl, 12
test dil, -26
or eax, -1341747033
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

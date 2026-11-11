.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 110
cmp dl, -82
dec cl
sub cl, dil
test al, 18
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub cl, -73
sub dil, 65
xor dil, -23
cmp cl, dl
mov bl, sil
sub al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, di
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
add al, -3
adc cl, bl
add al, -44
or al, -50
cmovz ebx, eax
add dil, -84
adc al, 116
cmp al, 114
sub dl, sil
mov sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

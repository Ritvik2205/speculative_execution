.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 0
or al, 27
and ax, 27239
and dil, 8
and cl, dil
adc dl, al
cmp rcx, -121
cmp al, 115
cmp al, dl
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
sub al, 54
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

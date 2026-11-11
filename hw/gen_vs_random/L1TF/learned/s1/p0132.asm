.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 50
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
adc al, 70
xor cl, dil
cmp dl, al
mov cl, dl
jmp .bb_0.1
.bb_0.1:
sub rax, 57846954
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and cl, dl
sub sil, al
sub dil, sil
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub rbx, -11
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
sub cl, bl
lea rcx, qword ptr [rdi + rsi + 52]
js .bb_0.1
jmp .exit_0
.bb_0.1:
or ax, 19104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
or eax, ebx
test ax, 13879
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and dl, cl
test rdx, rsi
sbb bl, dl
lea rcx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

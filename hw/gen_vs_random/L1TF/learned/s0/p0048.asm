.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
cmp rax, 16650668
test eax, 645518295
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and dl, 32
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

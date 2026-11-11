.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 93
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
sub dil, -111
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
neg rcx
cmp sil, al
xor edx, 43
adc dl, 80
sub cl, dil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

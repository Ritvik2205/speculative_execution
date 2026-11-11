.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
adc bl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
sub al, -47
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
add al, dil
jmp .bb_0.1
.bb_0.1:
cmp di, 45
and rax, 1994547909
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

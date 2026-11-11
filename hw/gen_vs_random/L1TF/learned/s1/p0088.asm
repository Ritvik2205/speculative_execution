.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 75
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and bl, 89
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 62
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
xor dl, sil
adc sil, 19
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

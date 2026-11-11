.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
setb bl
jmp .bb_0.1
.bb_0.1:
cbw
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
cmovnz rdi, rsi
and dl, -86
sub dil, -39
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -47
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
neg cl
cmp dil, sil
and al, -54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

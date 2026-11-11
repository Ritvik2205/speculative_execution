.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
cmovb ax, cx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], 90
jmp .bb_0.1
.bb_0.1:
or dl, cl
test bl, -92
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
sbb sil, dil
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

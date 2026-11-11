.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 67
cmp ebx, -33
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, -27488
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

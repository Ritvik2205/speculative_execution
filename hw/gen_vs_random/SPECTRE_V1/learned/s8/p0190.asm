.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
mov cl, al
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dil, -93
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
btc eax, 31
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea dx, qword ptr [rbx + rcx + 68]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
cmp dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

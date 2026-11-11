.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
or al, -5
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
adc cl, -34
jmp .bb_0.3
.bb_0.3:
and bl, bl
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
xchg esi, eax
neg al
jmp .bb_0.4
.bb_0.4:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

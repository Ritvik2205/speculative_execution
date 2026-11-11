.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
lea rax, qword ptr [rdx + rsi + 48]
add dil, 103 # instrumentation
cmovno ebx, edi
btc dx, ax
lea eax, qword ptr [rax + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 59
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ecx, 8
cmovle rbx, rdi
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
add sil, 113 # instrumentation
setnb sil
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
cmovnz dx, cx
xchg rcx, rdi
adc al, dil
xchg edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

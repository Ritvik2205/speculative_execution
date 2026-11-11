.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
or al, 19
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea bx, qword ptr [rdx + rcx + 47]
jle .bb_0.4
jmp .exit_0
.bb_0.4:
setnz al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
add sil, dl
adc dl, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

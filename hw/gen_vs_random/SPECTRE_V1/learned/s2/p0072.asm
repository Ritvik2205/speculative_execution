.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 92
sbb al, dil
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
setnb al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
jns .bb_0.4
jmp .exit_0
.bb_0.4:
lea ax, qword ptr [rdi + rbx + 16]
add dil, dil
adc dl, -49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

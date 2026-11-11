.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
test al, 40
add dl, bl
add al, -109
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
jns .bb_0.3
jmp .exit_0
.bb_0.3:
lea rsi, qword ptr [rdx + rbx + 9]
setnle cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rsi, qword ptr [rax + rdx]
and dl, -92
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 1713273566
sub cl, -21
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
jno .bb_0.4
jmp .exit_0
.bb_0.4:
inc bl
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

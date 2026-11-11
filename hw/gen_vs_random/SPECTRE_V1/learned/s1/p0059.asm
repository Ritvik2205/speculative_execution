.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
sbb eax, 2098460225
xor cl, -40
setz dl
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rdi + rsi + 70]
sub cl, bl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
inc al
sbb sil, -78
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

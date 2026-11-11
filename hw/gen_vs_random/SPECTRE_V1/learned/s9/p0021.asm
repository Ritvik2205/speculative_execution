.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
adc dl, 80
dec dil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea eax, qword ptr [rbx]
sbb dl, sil
xor al, bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

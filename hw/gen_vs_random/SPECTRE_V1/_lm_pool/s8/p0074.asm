.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
sbb cl, bl
test al, 59
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and dl, bl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and al, -23
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
jle .bb_0.2
jmp .exit_0
.bb_0.2:
cmp cl, al
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

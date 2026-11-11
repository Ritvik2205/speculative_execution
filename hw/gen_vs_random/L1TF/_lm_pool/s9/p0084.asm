.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
sub dl, -78
sub sil, al
lea rcx, qword ptr [rdx + rsi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, -109
inc edx
jmp .bb_0.3
.bb_0.3:
jnle .bb_0.4
jmp .exit_0
.bb_0.4:
btr esi, edx
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

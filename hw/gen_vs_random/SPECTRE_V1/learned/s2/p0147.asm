.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
lea bx, qword ptr [rdi + rdx + 58]
sub bl, -6
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ebx, qword ptr [rsi + rax + 8]
add al, sil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
test al, 40
add al, bl
lea rdi, qword ptr [rdx]
cmp cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

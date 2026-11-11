.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
test al, 84
xor bl, -38
sub al, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add bl, bl
test sil, 47
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

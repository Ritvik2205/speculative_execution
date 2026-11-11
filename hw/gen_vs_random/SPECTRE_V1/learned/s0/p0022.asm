.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
or eax, -1641258390
test sil, 47
setb cl
cmp cl, dil
add cl, cl
lea rax, qword ptr [rdx + rcx + 52]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -127
jmp .bb_0.2
.bb_0.2:
or esi, -74
sub dil, -32
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea rsi, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

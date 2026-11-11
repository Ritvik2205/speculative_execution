.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb edx, ebx
cmp al, dil
test dl, -105
xor al, -74
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sub cl, bl
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

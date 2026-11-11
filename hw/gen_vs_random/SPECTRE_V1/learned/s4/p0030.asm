.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 12 # instrumentation
cmovnb ecx, ebx
xor bl, dil
sub sil, -18
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
add bl, sil
cmp cl, dil
sub al, -82
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
bt si, 239
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

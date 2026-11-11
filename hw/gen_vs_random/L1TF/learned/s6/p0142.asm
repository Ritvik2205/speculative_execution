.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
sbb dl, dil
not bl
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
cmp cl, 57
test bl, 45
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
lea esi, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
bswap rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

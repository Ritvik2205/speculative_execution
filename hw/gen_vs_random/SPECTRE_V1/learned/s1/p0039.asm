.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 27
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 1
and cl, 86
cmovns rdi, rdx
cmp eax, -563371897
jp .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, dl
add al, 18
sub dl, cl
bswap rdi
add al, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

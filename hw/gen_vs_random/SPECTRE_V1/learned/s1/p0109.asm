.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
xchg ebx, esi
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
jno .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

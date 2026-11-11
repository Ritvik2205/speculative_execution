.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
sbb dl, sil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 19
add dx, -90
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 47
sub si, 32
xor dl, 71
and ax, -13240
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
cmp esi, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
lea ax, qword ptr [rbx]
xor sil, 64
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
and bl, 89
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
xor cl, 89
add sil, -61
or ax, -18131
cmp dl, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

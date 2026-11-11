.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 81
and sil, bl
or edx, -1
and dil, 125
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
or al, 25
or al, -61
test bl, dil
or ax, 16560
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

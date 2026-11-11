.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -74
add edx, 14
cmovno di, ax
and dl, dl
cmp bl, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
mov dil, dl
adc dl, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
add dl, 47
or bl, dil
cmovns rax, rdx
lea esi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
setnz dil
mov sil, 10
add bl, 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

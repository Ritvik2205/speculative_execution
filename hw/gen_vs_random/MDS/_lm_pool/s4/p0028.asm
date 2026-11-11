.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
xor rbx, 89
and rbx, 65
test sil, dil
xor cl, bl
or sil, -49
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
test cl, 101
or ax, -4210
xor dl, -43
xor rcx, 71
or bl, dil
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
cmovnz rdi, rsi
or dil, -78
or rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

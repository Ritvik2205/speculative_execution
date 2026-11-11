.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, dl
and sil, 52
lea di, qword ptr [rdx]
or sil, bl
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
cmp ax, 7452
cmp edx, 44
lea di, qword ptr [rcx + rsi + 76]
or rax, -1571963467
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
lea si, qword ptr [rdi + rbx + 1041]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 24
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax]
mov di, 56
add dl, 88 # instrumentation
sbb dl, 54
sbb dl, sil
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
add ecx, 37
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
not si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

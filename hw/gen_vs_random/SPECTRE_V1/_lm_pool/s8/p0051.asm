.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
add rax, -704585563
sbb sil, dl
adc bl, -73
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add bl, 70
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
inc edi
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

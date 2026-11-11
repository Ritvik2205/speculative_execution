.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
or dil, bl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and bl, 68
and cl, sil
or dil, bl
and bl, bl
or bl, 43
or cl, 39
or ax, 127
and bx, 64
test al, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
or rdx, -48
and eax, -85386306
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

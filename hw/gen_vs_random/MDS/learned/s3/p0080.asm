.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bl, bl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor rax, -91
and bl, 68
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
or esi, -110
xor cl, bl
test sil, dl
and cl, sil
and al, 14
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
btr edx, ecx
not cl
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
test sil, dl
or bl, al
jmp .bb_0.1
.bb_0.1:
test dl, 9
xor rax, -1499464454
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 48
and ax, 13090
and si, -121
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

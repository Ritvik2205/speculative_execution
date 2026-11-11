.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, 94
or rsi, 32
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
xor al, cl
or dl, bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and sil, al
and dil, 125
xor ax, 31969
and cl, al
and cl, dl
or dl, bl
or ax, 30524
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop

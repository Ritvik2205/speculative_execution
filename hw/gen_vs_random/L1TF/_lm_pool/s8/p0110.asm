.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or sil, al
jmp .bb_0.1
.bb_0.1:
cmovb bx, di
btc edx, 82
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
